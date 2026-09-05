import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_args.dart';
import 'broker_configuration.dart';
import 'broker_encryption_options.dart';
import 'broker_instance.dart';
import 'broker_ldap_server_metadata.dart';
import 'broker_logs.dart';
import 'broker_maintenance_window_start_time.dart';
import 'broker_shared_resource.dart';
import 'broker_state.dart';
import 'broker_user.dart';

/// Manages an AWS MQ broker. Use to create and manage message brokers for ActiveMQ and RabbitMQ engines.
///
/// &gt; For more information on Amazon MQ, see [Amazon MQ documentation](https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/welcome.html).
///
/// &gt; **Note:** For RabbitMQ brokers, only one administrative user can be created during provisioning. Additional users must be created via the [RabbitMQ Management API](https://www.rabbitmq.com/management.html) or the Amazon MQ console after the broker is provisioned. Terraform cannot update or manage users after broker creation. Any changes to the `user` block will trigger full broker recreation. Amazon MQ does not return RabbitMQ user information via APIs, meaning drift of the `user` attribute can not be detected.
///
/// &gt; **Warning:** Amazon MQ currently places limits on **RabbitMQ** brokers. For example, a RabbitMQ broker cannot have: instances with an associated IP address of an ENI attached to the broker, an associated LDAP server to authenticate and authorize broker connections, storage type `EFS`, or audit logging. Although this resource allows you to create RabbitMQ users, RabbitMQ users cannot have console access or groups.
///
/// &gt; **Warning:** All arguments including the username and password will be stored in the raw state as plain-text. &gt; **Note:** Changes to an MQ Broker can occur when you change a parameter, such as `configuration` or `user`, and are reflected in the next maintenance window. Because of this, Terraform may report a difference in its planning phase because a modification has not yet taken place. You can use the `applyImmediately` flag to instruct the service to apply the change immediately (see documentation below). Using `applyImmediately` can result in a brief downtime as the broker reboots.
///
/// ## Example Usage
///
/// ### Basic Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.mq.Broker("example", {
///     configuration: {
///         id: test.id,
///         revision: Number(test.latestRevision),
///     },
///     users: [{
///         username: "example_user",
///         password: "<password>",
///     }],
///     brokerName: "example",
///     engineType: "ActiveMQ",
///     engineVersion: "5.17.6",
///     hostInstanceType: "mq.t2.micro",
///     securityGroups: [testAwsSecurityGroup.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mq.Broker("example",
///     configuration={
///         "id": test["id"],
///         "revision": int(test["latestRevision"]),
///     },
///     users=[{
///         "username": "example_user",
///         "password": "<password>",
///     }],
///     broker_name="example",
///     engine_type="ActiveMQ",
///     engine_version="5.17.6",
///     host_instance_type="mq.t2.micro",
///     security_groups=[test_aws_security_group["id"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Mq.Broker("example", new()
///     {
///         Configuration = new Aws.Mq.Inputs.BrokerConfigurationArgs
///         {
///             Id = test.Id,
///             Revision = test.LatestRevision,
///         },
///         Users = new[]
///         {
///             new Aws.Mq.Inputs.BrokerUserArgs
///             {
///                 Username = "example_user",
///                 Password = "<password>",
///             },
///         },
///         BrokerName = "example",
///         EngineType = "ActiveMQ",
///         EngineVersion = "5.17.6",
///         HostInstanceType = "mq.t2.micro",
///         SecurityGroups = new[]
///         {
///             testAwsSecurityGroup.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mq"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mq.NewBroker(ctx, "example", &mq.BrokerArgs{
/// 			Configuration: &mq.BrokerConfigurationArgs{
/// 				Id:       pulumi.Any(test.Id),
/// 				Revision: pulumi.Any(test.LatestRevision),
/// 			},
/// 			Users: mq.BrokerUserArray{
/// 				&mq.BrokerUserArgs{
/// 					Username: pulumi.String("example_user"),
/// 					Password: pulumi.String("<password>"),
/// 				},
/// 			},
/// 			BrokerName:       pulumi.String("example"),
/// 			EngineType:       pulumi.String("ActiveMQ"),
/// 			EngineVersion:    pulumi.String("5.17.6"),
/// 			HostInstanceType: pulumi.String("mq.t2.micro"),
/// 			SecurityGroups: pulumi.StringArray{
/// 				testAwsSecurityGroup.Id,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_mq_broker" "example" {
///   configuration = {
///     id       = test.id
///     revision = test.latestRevision
///   }
///   users {
///     username = "example_user"
///     password = "<password>"
///   }
///   broker_name        = "example"
///   engine_type        = "ActiveMQ"
///   engine_version     = "5.17.6"
///   host_instance_type = "mq.t2.micro"
///   security_groups    = [testAwsSecurityGroup.id]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.mq.Broker;
/// import com.pulumi.aws.mq.BrokerArgs;
/// import com.pulumi.aws.mq.inputs.BrokerConfigurationArgs;
/// import com.pulumi.aws.mq.inputs.BrokerUserArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Broker("example", BrokerArgs.builder()
///             .configuration(BrokerConfigurationArgs.builder()
///                 .id(test.id())
///                 .revision(test.latestRevision())
///                 .build())
///             .users(BrokerUserArgs.builder()
///                 .username("example_user")
///                 .password("<password>")
///                 .build())
///             .brokerName("example")
///             .engineType("ActiveMQ")
///             .engineVersion("5.17.6")
///             .hostInstanceType("mq.t2.micro")
///             .securityGroups(testAwsSecurityGroup.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:mq:Broker
///     properties:
///       configuration:
///         id: ${test.id}
///         revision: ${test.latestRevision}
///       users:
///         - username: example_user
///           password: <password>
///       brokerName: example
///       engineType: ActiveMQ
///       engineVersion: 5.17.6
///       hostInstanceType: mq.t2.micro
///       securityGroups:
///         - ${testAwsSecurityGroup.id}
/// ```
///
///
/// ### High-throughput Optimized Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.mq.Broker("example", {
///     configuration: {
///         id: test.id,
///         revision: Number(test.latestRevision),
///     },
///     users: [{
///         username: "example_user",
///         password: "<password>",
///     }],
///     brokerName: "example",
///     engineType: "ActiveMQ",
///     engineVersion: "5.17.6",
///     storageType: "ebs",
///     hostInstanceType: "mq.m5.large",
///     securityGroups: [testAwsSecurityGroup.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mq.Broker("example",
///     configuration={
///         "id": test["id"],
///         "revision": int(test["latestRevision"]),
///     },
///     users=[{
///         "username": "example_user",
///         "password": "<password>",
///     }],
///     broker_name="example",
///     engine_type="ActiveMQ",
///     engine_version="5.17.6",
///     storage_type="ebs",
///     host_instance_type="mq.m5.large",
///     security_groups=[test_aws_security_group["id"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Mq.Broker("example", new()
///     {
///         Configuration = new Aws.Mq.Inputs.BrokerConfigurationArgs
///         {
///             Id = test.Id,
///             Revision = test.LatestRevision,
///         },
///         Users = new[]
///         {
///             new Aws.Mq.Inputs.BrokerUserArgs
///             {
///                 Username = "example_user",
///                 Password = "<password>",
///             },
///         },
///         BrokerName = "example",
///         EngineType = "ActiveMQ",
///         EngineVersion = "5.17.6",
///         StorageType = "ebs",
///         HostInstanceType = "mq.m5.large",
///         SecurityGroups = new[]
///         {
///             testAwsSecurityGroup.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mq"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mq.NewBroker(ctx, "example", &mq.BrokerArgs{
/// 			Configuration: &mq.BrokerConfigurationArgs{
/// 				Id:       pulumi.Any(test.Id),
/// 				Revision: pulumi.Any(test.LatestRevision),
/// 			},
/// 			Users: mq.BrokerUserArray{
/// 				&mq.BrokerUserArgs{
/// 					Username: pulumi.String("example_user"),
/// 					Password: pulumi.String("<password>"),
/// 				},
/// 			},
/// 			BrokerName:       pulumi.String("example"),
/// 			EngineType:       pulumi.String("ActiveMQ"),
/// 			EngineVersion:    pulumi.String("5.17.6"),
/// 			StorageType:      pulumi.String("ebs"),
/// 			HostInstanceType: pulumi.String("mq.m5.large"),
/// 			SecurityGroups: pulumi.StringArray{
/// 				testAwsSecurityGroup.Id,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_mq_broker" "example" {
///   configuration = {
///     id       = test.id
///     revision = test.latestRevision
///   }
///   users {
///     username = "example_user"
///     password = "<password>"
///   }
///   broker_name        = "example"
///   engine_type        = "ActiveMQ"
///   engine_version     = "5.17.6"
///   storage_type       = "ebs"
///   host_instance_type = "mq.m5.large"
///   security_groups    = [testAwsSecurityGroup.id]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.mq.Broker;
/// import com.pulumi.aws.mq.BrokerArgs;
/// import com.pulumi.aws.mq.inputs.BrokerConfigurationArgs;
/// import com.pulumi.aws.mq.inputs.BrokerUserArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Broker("example", BrokerArgs.builder()
///             .configuration(BrokerConfigurationArgs.builder()
///                 .id(test.id())
///                 .revision(test.latestRevision())
///                 .build())
///             .users(BrokerUserArgs.builder()
///                 .username("example_user")
///                 .password("<password>")
///                 .build())
///             .brokerName("example")
///             .engineType("ActiveMQ")
///             .engineVersion("5.17.6")
///             .storageType("ebs")
///             .hostInstanceType("mq.m5.large")
///             .securityGroups(testAwsSecurityGroup.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:mq:Broker
///     properties:
///       configuration:
///         id: ${test.id}
///         revision: ${test.latestRevision}
///       users:
///         - username: example_user
///           password: <password>
///       brokerName: example
///       engineType: ActiveMQ
///       engineVersion: 5.17.6
///       storageType: ebs
///       hostInstanceType: mq.m5.large
///       securityGroups:
///         - ${testAwsSecurityGroup.id}
/// ```
///
///
/// ### Cross-Region Data Replication
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const examplePrimary = new aws.mq.Broker("example_primary", {
///     users: [
///         {
///             username: "example_user",
///             password: "<password>",
///         },
///         {
///             username: "example_replication_user",
///             password: "<password>",
///             replicationUser: true,
///         },
///     ],
///     applyImmediately: true,
///     brokerName: "example_primary",
///     engineType: "ActiveMQ",
///     engineVersion: "5.17.6",
///     hostInstanceType: "mq.m5.large",
///     securityGroups: [examplePrimaryAwsSecurityGroup.id],
///     deploymentMode: "ACTIVE_STANDBY_MULTI_AZ",
/// });
/// const example = new aws.mq.Broker("example", {
///     users: [
///         {
///             username: "example_user",
///             password: "<password>",
///         },
///         {
///             username: "example_replication_user",
///             password: "<password>",
///             replicationUser: true,
///         },
///     ],
///     applyImmediately: true,
///     brokerName: "example",
///     engineType: "ActiveMQ",
///     engineVersion: "5.17.6",
///     hostInstanceType: "mq.m5.large",
///     securityGroups: [exampleAwsSecurityGroup.id],
///     deploymentMode: "ACTIVE_STANDBY_MULTI_AZ",
///     dataReplicationMode: "CRDR",
///     dataReplicationPrimaryBrokerArn: primary.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_primary = aws.mq.Broker("example_primary",
///     users=[
///         {
///             "username": "example_user",
///             "password": "<password>",
///         },
///         {
///             "username": "example_replication_user",
///             "password": "<password>",
///             "replication_user": True,
///         },
///     ],
///     apply_immediately=True,
///     broker_name="example_primary",
///     engine_type="ActiveMQ",
///     engine_version="5.17.6",
///     host_instance_type="mq.m5.large",
///     security_groups=[example_primary_aws_security_group["id"]],
///     deployment_mode="ACTIVE_STANDBY_MULTI_AZ")
/// example = aws.mq.Broker("example",
///     users=[
///         {
///             "username": "example_user",
///             "password": "<password>",
///         },
///         {
///             "username": "example_replication_user",
///             "password": "<password>",
///             "replication_user": True,
///         },
///     ],
///     apply_immediately=True,
///     broker_name="example",
///     engine_type="ActiveMQ",
///     engine_version="5.17.6",
///     host_instance_type="mq.m5.large",
///     security_groups=[example_aws_security_group["id"]],
///     deployment_mode="ACTIVE_STANDBY_MULTI_AZ",
///     data_replication_mode="CRDR",
///     data_replication_primary_broker_arn=primary["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var examplePrimary = new Aws.Mq.Broker("example_primary", new()
///     {
///         Users = new[]
///         {
///             new Aws.Mq.Inputs.BrokerUserArgs
///             {
///                 Username = "example_user",
///                 Password = "<password>",
///             },
///             new Aws.Mq.Inputs.BrokerUserArgs
///             {
///                 Username = "example_replication_user",
///                 Password = "<password>",
///                 ReplicationUser = true,
///             },
///         },
///         ApplyImmediately = true,
///         BrokerName = "example_primary",
///         EngineType = "ActiveMQ",
///         EngineVersion = "5.17.6",
///         HostInstanceType = "mq.m5.large",
///         SecurityGroups = new[]
///         {
///             examplePrimaryAwsSecurityGroup.Id,
///         },
///         DeploymentMode = "ACTIVE_STANDBY_MULTI_AZ",
///     });
///
///     var example = new Aws.Mq.Broker("example", new()
///     {
///         Users = new[]
///         {
///             new Aws.Mq.Inputs.BrokerUserArgs
///             {
///                 Username = "example_user",
///                 Password = "<password>",
///             },
///             new Aws.Mq.Inputs.BrokerUserArgs
///             {
///                 Username = "example_replication_user",
///                 Password = "<password>",
///                 ReplicationUser = true,
///             },
///         },
///         ApplyImmediately = true,
///         BrokerName = "example",
///         EngineType = "ActiveMQ",
///         EngineVersion = "5.17.6",
///         HostInstanceType = "mq.m5.large",
///         SecurityGroups = new[]
///         {
///             exampleAwsSecurityGroup.Id,
///         },
///         DeploymentMode = "ACTIVE_STANDBY_MULTI_AZ",
///         DataReplicationMode = "CRDR",
///         DataReplicationPrimaryBrokerArn = primary.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mq"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mq.NewBroker(ctx, "example_primary", &mq.BrokerArgs{
/// 			Users: mq.BrokerUserArray{
/// 				&mq.BrokerUserArgs{
/// 					Username: pulumi.String("example_user"),
/// 					Password: pulumi.String("<password>"),
/// 				},
/// 				&mq.BrokerUserArgs{
/// 					Username:        pulumi.String("example_replication_user"),
/// 					Password:        pulumi.String("<password>"),
/// 					ReplicationUser: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ApplyImmediately: pulumi.Bool(true),
/// 			BrokerName:       pulumi.String("example_primary"),
/// 			EngineType:       pulumi.String("ActiveMQ"),
/// 			EngineVersion:    pulumi.String("5.17.6"),
/// 			HostInstanceType: pulumi.String("mq.m5.large"),
/// 			SecurityGroups: pulumi.StringArray{
/// 				examplePrimaryAwsSecurityGroup.Id,
/// 			},
/// 			DeploymentMode: pulumi.String("ACTIVE_STANDBY_MULTI_AZ"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mq.NewBroker(ctx, "example", &mq.BrokerArgs{
/// 			Users: mq.BrokerUserArray{
/// 				&mq.BrokerUserArgs{
/// 					Username: pulumi.String("example_user"),
/// 					Password: pulumi.String("<password>"),
/// 				},
/// 				&mq.BrokerUserArgs{
/// 					Username:        pulumi.String("example_replication_user"),
/// 					Password:        pulumi.String("<password>"),
/// 					ReplicationUser: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ApplyImmediately: pulumi.Bool(true),
/// 			BrokerName:       pulumi.String("example"),
/// 			EngineType:       pulumi.String("ActiveMQ"),
/// 			EngineVersion:    pulumi.String("5.17.6"),
/// 			HostInstanceType: pulumi.String("mq.m5.large"),
/// 			SecurityGroups: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Id,
/// 			},
/// 			DeploymentMode:                  pulumi.String("ACTIVE_STANDBY_MULTI_AZ"),
/// 			DataReplicationMode:             pulumi.String("CRDR"),
/// 			DataReplicationPrimaryBrokerArn: pulumi.Any(primary.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_mq_broker" "example_primary" {
///   users {
///     username = "example_user"
///     password = "<password>"
///   }
///   users {
///     username         = "example_replication_user"
///     password         = "<password>"
///     replication_user = true
///   }
///   apply_immediately  = true
///   broker_name        = "example_primary"
///   engine_type        = "ActiveMQ"
///   engine_version     = "5.17.6"
///   host_instance_type = "mq.m5.large"
///   security_groups    = [examplePrimaryAwsSecurityGroup.id]
///   deployment_mode    = "ACTIVE_STANDBY_MULTI_AZ"
/// }
/// resource "aws_mq_broker" "example" {
///   users {
///     username = "example_user"
///     password = "<password>"
///   }
///   users {
///     username         = "example_replication_user"
///     password         = "<password>"
///     replication_user = true
///   }
///   apply_immediately                   = true
///   broker_name                         = "example"
///   engine_type                         = "ActiveMQ"
///   engine_version                      = "5.17.6"
///   host_instance_type                  = "mq.m5.large"
///   security_groups                     = [exampleAwsSecurityGroup.id]
///   deployment_mode                     = "ACTIVE_STANDBY_MULTI_AZ"
///   data_replication_mode               = "CRDR"
///   data_replication_primary_broker_arn = primary.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.mq.Broker;
/// import com.pulumi.aws.mq.BrokerArgs;
/// import com.pulumi.aws.mq.inputs.BrokerUserArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var examplePrimary = new Broker("examplePrimary", BrokerArgs.builder()
///             .users(
///                 BrokerUserArgs.builder()
///                     .username("example_user")
///                     .password("<password>")
///                     .build(),
///                 BrokerUserArgs.builder()
///                     .username("example_replication_user")
///                     .password("<password>")
///                     .replicationUser(true)
///                     .build())
///             .applyImmediately(true)
///             .brokerName("example_primary")
///             .engineType("ActiveMQ")
///             .engineVersion("5.17.6")
///             .hostInstanceType("mq.m5.large")
///             .securityGroups(examplePrimaryAwsSecurityGroup.id())
///             .deploymentMode("ACTIVE_STANDBY_MULTI_AZ")
///             .build());
///
///         var example = new Broker("example", BrokerArgs.builder()
///             .users(
///                 BrokerUserArgs.builder()
///                     .username("example_user")
///                     .password("<password>")
///                     .build(),
///                 BrokerUserArgs.builder()
///                     .username("example_replication_user")
///                     .password("<password>")
///                     .replicationUser(true)
///                     .build())
///             .applyImmediately(true)
///             .brokerName("example")
///             .engineType("ActiveMQ")
///             .engineVersion("5.17.6")
///             .hostInstanceType("mq.m5.large")
///             .securityGroups(exampleAwsSecurityGroup.id())
///             .deploymentMode("ACTIVE_STANDBY_MULTI_AZ")
///             .dataReplicationMode("CRDR")
///             .dataReplicationPrimaryBrokerArn(primary.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplePrimary:
///     type: aws:mq:Broker
///     name: example_primary
///     properties:
///       users:
///         - username: example_user
///           password: <password>
///         - username: example_replication_user
///           password: <password>
///           replicationUser: true
///       applyImmediately: true
///       brokerName: example_primary
///       engineType: ActiveMQ
///       engineVersion: 5.17.6
///       hostInstanceType: mq.m5.large
///       securityGroups:
///         - ${examplePrimaryAwsSecurityGroup.id}
///       deploymentMode: ACTIVE_STANDBY_MULTI_AZ
///   example:
///     type: aws:mq:Broker
///     properties:
///       users:
///         - username: example_user
///           password: <password>
///         - username: example_replication_user
///           password: <password>
///           replicationUser: true
///       applyImmediately: true
///       brokerName: example
///       engineType: ActiveMQ
///       engineVersion: 5.17.6
///       hostInstanceType: mq.m5.large
///       securityGroups:
///         - ${exampleAwsSecurityGroup.id}
///       deploymentMode: ACTIVE_STANDBY_MULTI_AZ
///       dataReplicationMode: CRDR
///       dataReplicationPrimaryBrokerArn: ${primary.arn}
/// ```
///
///
/// See the [AWS MQ documentation](https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/crdr-for-active-mq.html) on cross-region data replication for additional details.
///
/// ## Import
///
/// Using `pulumi import`, import MQ Brokers using their broker id. For example:
///
/// ```sh
/// $ pulumi import aws:mq/broker:Broker example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class Broker extends pulumi.CustomResource {
  /// Whether to apply broker modifications immediately. Default is `false`.
  late final pulumi.Output<bool?> applyImmediately;
  /// ARN of the broker.
  late final pulumi.Output<String> arn;
  /// Authentication strategy used to secure the broker. Valid values are `simple` and `ldap`. `ldap` is not supported for `engineType` `RabbitMQ`.
  late final pulumi.Output<String> authenticationStrategy;
  /// Whether to automatically upgrade to new minor versions of brokers as Amazon MQ makes releases available.
  late final pulumi.Output<bool?> autoMinorVersionUpgrade;
  /// Name of the broker.
  late final pulumi.Output<String> brokerName;
  /// Configuration block for broker configuration. Applies to `engineType` of `ActiveMQ` and `RabbitMQ` only. Detailed below.
  late final pulumi.Output<BrokerConfiguration> configuration;
  /// Whether this broker is part of a data replication pair. Valid values are `CRDR` and `NONE`.
  late final pulumi.Output<String> dataReplicationMode;
  /// ARN of the primary broker used to replicate data in a data replication pair. Required when `dataReplicationMode` is `CRDR`.
  late final pulumi.Output<String?> dataReplicationPrimaryBrokerArn;
  /// Deployment mode of the broker. Valid values are `SINGLE_INSTANCE`, `ACTIVE_STANDBY_MULTI_AZ`, and `CLUSTER_MULTI_AZ`. Default is `SINGLE_INSTANCE`.
  late final pulumi.Output<String?> deploymentMode;
  /// Configuration block containing encryption options. Detailed below.
  late final pulumi.Output<BrokerEncryptionOptions?> encryptionOptions;
  /// Type of broker engine. Valid values are `ActiveMQ` and `RabbitMQ`.
  late final pulumi.Output<String> engineType;
  /// Version of the broker engine.
  late final pulumi.Output<String> engineVersion;
  /// Broker's instance type. For example, `mq.t3.micro`, `mq.m5.large`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> hostInstanceType;
  /// List of information about allocated brokers (both active & standby).
  late final pulumi.Output<List<BrokerInstance>> instances;
  /// Configuration block for the LDAP server used to authenticate and authorize connections. Not supported for `engineType` `RabbitMQ`. Detailed below.
  late final pulumi.Output<BrokerLdapServerMetadata?> ldapServerMetadata;
  /// Configuration block for the logging configuration. Detailed below.
  late final pulumi.Output<BrokerLogs?> logs;
  /// Configuration block for the maintenance window start time. Detailed below.
  late final pulumi.Output<BrokerMaintenanceWindowStartTime> maintenanceWindowStartTime;
  /// Data replication mode that will be applied after reboot.
  late final pulumi.Output<String> pendingDataReplicationMode;
  /// Whether to enable connections from applications outside of the VPC that hosts the broker's subnets.
  late final pulumi.Output<bool?> publiclyAccessible;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Set of [AWS RAM](https://docs.aws.amazon.com/ram/latest/userguide/what-is.html) resource share ARNs that grant the broker access to shared resources for [private networking](https://aws.amazon.com/blogs/big-data/introducing-private-networking-for-amazon-mq-for-rabbitmq/). Applies to `engineType` of `RabbitMQ` only. Because Amazon MQ applies resource shares during a reboot, set `applyImmediately` to `true` for changes to take effect without waiting for the next maintenance window.
  late final pulumi.Output<List<String>?> resourceShareArns;
  /// List of security group IDs assigned to the broker.
  late final pulumi.Output<List<String>?> securityGroups;
  /// List of resources shared with the broker via `resourceShareArns`. Only populated for `engineType` of `RabbitMQ`.
  late final pulumi.Output<List<BrokerSharedResource>> sharedResources;
  /// Storage type of the broker. For `engineType` `ActiveMQ`, valid values are `efs` and `ebs` (AWS-default is `efs`). For `engineType` `RabbitMQ`, only `ebs` is supported. When using `ebs`, only the `mq.m5` broker instance type family is supported.
  late final pulumi.Output<String> storageType;
  /// List of subnet IDs in which to launch the broker. A `SINGLE_INSTANCE` deployment requires one subnet. An `ACTIVE_STANDBY_MULTI_AZ` deployment requires multiple subnets.
  late final pulumi.Output<List<String>> subnetIds;
  /// Map of tags to assign to the broker. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Configuration block for broker users. For `engineType` of `RabbitMQ`, Amazon MQ does not return broker users preventing this resource from making user updates and drift detection. Detailed below.
  late final pulumi.Output<List<BrokerUser>?> users;

  /// Creates a new [Broker].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Broker]. {@macro pulumi_mq_broker_broker_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Broker(
    String name, {
    BrokerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mq/broker:Broker',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    applyImmediately = registerOutput<bool?>('applyImmediately');
    arn = registerOutput<String>('arn');
    authenticationStrategy = registerOutput<String>('authenticationStrategy');
    autoMinorVersionUpgrade = registerOutput<bool?>('autoMinorVersionUpgrade');
    brokerName = registerOutput<String>('brokerName');
    configuration = registerOutput<BrokerConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BrokerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataReplicationMode = registerOutput<String>('dataReplicationMode');
    dataReplicationPrimaryBrokerArn = registerOutput<String?>('dataReplicationPrimaryBrokerArn');
    deploymentMode = registerOutput<String?>('deploymentMode');
    encryptionOptions = registerOutput<BrokerEncryptionOptions?>('encryptionOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BrokerEncryptionOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    engineType = registerOutput<String>('engineType');
    engineVersion = registerOutput<String>('engineVersion');
    hostInstanceType = registerOutput<String>('hostInstanceType');
    instances = registerOutput<List<BrokerInstance>>('instances', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BrokerInstance>(guardedValue, (value) => BrokerInstance.fromMap((value as Map).cast<String, dynamic>())); });
    ldapServerMetadata = registerOutput<BrokerLdapServerMetadata?>('ldapServerMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BrokerLdapServerMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logs = registerOutput<BrokerLogs?>('logs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BrokerLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maintenanceWindowStartTime = registerOutput<BrokerMaintenanceWindowStartTime>('maintenanceWindowStartTime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BrokerMaintenanceWindowStartTime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pendingDataReplicationMode = registerOutput<String>('pendingDataReplicationMode');
    publiclyAccessible = registerOutput<bool?>('publiclyAccessible');
    region = registerOutput<String>('region');
    resourceShareArns = registerOutput<List<String>?>('resourceShareArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    securityGroups = registerOutput<List<String>?>('securityGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    sharedResources = registerOutput<List<BrokerSharedResource>>('sharedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BrokerSharedResource>(guardedValue, (value) => BrokerSharedResource.fromMap((value as Map).cast<String, dynamic>())); });
    storageType = registerOutput<String>('storageType');
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    users = registerOutput<List<BrokerUser>?>('users', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BrokerUser>(guardedValue, (value) => BrokerUser.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [Broker] resource's state with the given [name] and [id].
  static Broker get(
    String name,
    pulumi.Input<String> id, {
    BrokerState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Broker._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Broker._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mq/broker:Broker',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applyImmediately = registerOutput<bool?>('applyImmediately');
    arn = registerOutput<String>('arn');
    authenticationStrategy = registerOutput<String>('authenticationStrategy');
    autoMinorVersionUpgrade = registerOutput<bool?>('autoMinorVersionUpgrade');
    brokerName = registerOutput<String>('brokerName');
    configuration = registerOutput<BrokerConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BrokerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataReplicationMode = registerOutput<String>('dataReplicationMode');
    dataReplicationPrimaryBrokerArn = registerOutput<String?>('dataReplicationPrimaryBrokerArn');
    deploymentMode = registerOutput<String?>('deploymentMode');
    encryptionOptions = registerOutput<BrokerEncryptionOptions?>('encryptionOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BrokerEncryptionOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    engineType = registerOutput<String>('engineType');
    engineVersion = registerOutput<String>('engineVersion');
    hostInstanceType = registerOutput<String>('hostInstanceType');
    instances = registerOutput<List<BrokerInstance>>('instances', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BrokerInstance>(guardedValue, (value) => BrokerInstance.fromMap((value as Map).cast<String, dynamic>())); });
    ldapServerMetadata = registerOutput<BrokerLdapServerMetadata?>('ldapServerMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BrokerLdapServerMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logs = registerOutput<BrokerLogs?>('logs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BrokerLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maintenanceWindowStartTime = registerOutput<BrokerMaintenanceWindowStartTime>('maintenanceWindowStartTime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BrokerMaintenanceWindowStartTime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pendingDataReplicationMode = registerOutput<String>('pendingDataReplicationMode');
    publiclyAccessible = registerOutput<bool?>('publiclyAccessible');
    region = registerOutput<String>('region');
    resourceShareArns = registerOutput<List<String>?>('resourceShareArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    securityGroups = registerOutput<List<String>?>('securityGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    sharedResources = registerOutput<List<BrokerSharedResource>>('sharedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BrokerSharedResource>(guardedValue, (value) => BrokerSharedResource.fromMap((value as Map).cast<String, dynamic>())); });
    storageType = registerOutput<String>('storageType');
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    users = registerOutput<List<BrokerUser>?>('users', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BrokerUser>(guardedValue, (value) => BrokerUser.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [Broker] resource.
  Broker.reference(String urn)
    : super(
        'aws:mq/broker:Broker',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    applyImmediately = registerOutput<bool?>('applyImmediately');
    arn = registerOutput<String>('arn');
    authenticationStrategy = registerOutput<String>('authenticationStrategy');
    autoMinorVersionUpgrade = registerOutput<bool?>('autoMinorVersionUpgrade');
    brokerName = registerOutput<String>('brokerName');
    configuration = registerOutput<BrokerConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BrokerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataReplicationMode = registerOutput<String>('dataReplicationMode');
    dataReplicationPrimaryBrokerArn = registerOutput<String?>('dataReplicationPrimaryBrokerArn');
    deploymentMode = registerOutput<String?>('deploymentMode');
    encryptionOptions = registerOutput<BrokerEncryptionOptions?>('encryptionOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BrokerEncryptionOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    engineType = registerOutput<String>('engineType');
    engineVersion = registerOutput<String>('engineVersion');
    hostInstanceType = registerOutput<String>('hostInstanceType');
    instances = registerOutput<List<BrokerInstance>>('instances', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BrokerInstance>(guardedValue, (value) => BrokerInstance.fromMap((value as Map).cast<String, dynamic>())); });
    ldapServerMetadata = registerOutput<BrokerLdapServerMetadata?>('ldapServerMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BrokerLdapServerMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logs = registerOutput<BrokerLogs?>('logs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BrokerLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maintenanceWindowStartTime = registerOutput<BrokerMaintenanceWindowStartTime>('maintenanceWindowStartTime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BrokerMaintenanceWindowStartTime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pendingDataReplicationMode = registerOutput<String>('pendingDataReplicationMode');
    publiclyAccessible = registerOutput<bool?>('publiclyAccessible');
    region = registerOutput<String>('region');
    resourceShareArns = registerOutput<List<String>?>('resourceShareArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    securityGroups = registerOutput<List<String>?>('securityGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    sharedResources = registerOutput<List<BrokerSharedResource>>('sharedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BrokerSharedResource>(guardedValue, (value) => BrokerSharedResource.fromMap((value as Map).cast<String, dynamic>())); });
    storageType = registerOutput<String>('storageType');
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    users = registerOutput<List<BrokerUser>?>('users', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BrokerUser>(guardedValue, (value) => BrokerUser.fromMap((value as Map).cast<String, dynamic>())); });
  }
}

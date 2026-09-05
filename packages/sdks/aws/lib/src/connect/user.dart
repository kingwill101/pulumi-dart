import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';
import 'user_identity_info.dart';
import 'user_phone_config.dart';
import 'user_state.dart';

/// Provides an Amazon Connect User resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.User("example", {
///     identityInfo: {
///         firstName: "example",
///         lastName: "example2",
///     },
///     phoneConfig: {
///         afterContactWorkTimeLimit: 0,
///         phoneType: "SOFT_PHONE",
///     },
///     instanceId: exampleAwsConnectInstance.id,
///     name: "example",
///     password: "Password123",
///     routingProfileId: exampleAwsConnectRoutingProfile.routingProfileId,
///     securityProfileIds: [exampleAwsConnectSecurityProfile.securityProfileId],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.User("example",
///     identity_info={
///         "first_name": "example",
///         "last_name": "example2",
///     },
///     phone_config={
///         "after_contact_work_time_limit": 0,
///         "phone_type": "SOFT_PHONE",
///     },
///     instance_id=example_aws_connect_instance["id"],
///     name="example",
///     password="Password123",
///     routing_profile_id=example_aws_connect_routing_profile["routingProfileId"],
///     security_profile_ids=[example_aws_connect_security_profile["securityProfileId"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Connect.User("example", new()
///     {
///         IdentityInfo = new Aws.Connect.Inputs.UserIdentityInfoArgs
///         {
///             FirstName = "example",
///             LastName = "example2",
///         },
///         PhoneConfig = new Aws.Connect.Inputs.UserPhoneConfigArgs
///         {
///             AfterContactWorkTimeLimit = 0,
///             PhoneType = "SOFT_PHONE",
///         },
///         InstanceId = exampleAwsConnectInstance.Id,
///         Name = "example",
///         Password = "Password123",
///         RoutingProfileId = exampleAwsConnectRoutingProfile.RoutingProfileId,
///         SecurityProfileIds = new[]
///         {
///             exampleAwsConnectSecurityProfile.SecurityProfileId,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewUser(ctx, "example", &connect.UserArgs{
/// 			IdentityInfo: &connect.UserIdentityInfoArgs{
/// 				FirstName: pulumi.String("example"),
/// 				LastName:  pulumi.String("example2"),
/// 			},
/// 			PhoneConfig: &connect.UserPhoneConfigArgs{
/// 				AfterContactWorkTimeLimit: pulumi.Int(0),
/// 				PhoneType:                 pulumi.String("SOFT_PHONE"),
/// 			},
/// 			InstanceId:       pulumi.Any(exampleAwsConnectInstance.Id),
/// 			Name:             pulumi.String("example"),
/// 			Password:         pulumi.String("Password123"),
/// 			RoutingProfileId: pulumi.Any(exampleAwsConnectRoutingProfile.RoutingProfileId),
/// 			SecurityProfileIds: pulumi.StringArray{
/// 				exampleAwsConnectSecurityProfile.SecurityProfileId,
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
/// resource "aws_connect_user" "example" {
///   identity_info = {
///     first_name = "example"
///     last_name  = "example2"
///   }
///   phone_config = {
///     after_contact_work_time_limit = 0
///     phone_type                    = "SOFT_PHONE"
///   }
///   instance_id          = exampleAwsConnectInstance.id
///   name                 = "example"
///   password             = "Password123"
///   routing_profile_id   = exampleAwsConnectRoutingProfile.routingProfileId
///   security_profile_ids = [exampleAwsConnectSecurityProfile.securityProfileId]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.User;
/// import com.pulumi.aws.connect.UserArgs;
/// import com.pulumi.aws.connect.inputs.UserIdentityInfoArgs;
/// import com.pulumi.aws.connect.inputs.UserPhoneConfigArgs;
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
///         var example = new User("example", UserArgs.builder()
///             .identityInfo(UserIdentityInfoArgs.builder()
///                 .firstName("example")
///                 .lastName("example2")
///                 .build())
///             .phoneConfig(UserPhoneConfigArgs.builder()
///                 .afterContactWorkTimeLimit(0)
///                 .phoneType("SOFT_PHONE")
///                 .build())
///             .instanceId(exampleAwsConnectInstance.id())
///             .name("example")
///             .password("Password123")
///             .routingProfileId(exampleAwsConnectRoutingProfile.routingProfileId())
///             .securityProfileIds(exampleAwsConnectSecurityProfile.securityProfileId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:connect:User
///     properties:
///       identityInfo:
///         firstName: example
///         lastName: example2
///       phoneConfig:
///         afterContactWorkTimeLimit: 0
///         phoneType: SOFT_PHONE
///       instanceId: ${exampleAwsConnectInstance.id}
///       name: example
///       password: Password123
///       routingProfileId: ${exampleAwsConnectRoutingProfile.routingProfileId}
///       securityProfileIds:
///         - ${exampleAwsConnectSecurityProfile.securityProfileId}
/// ```
///
///
/// ### With hierarchyGroupId
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.User("example", {
///     identityInfo: {
///         firstName: "example",
///         lastName: "example2",
///     },
///     phoneConfig: {
///         afterContactWorkTimeLimit: 0,
///         phoneType: "SOFT_PHONE",
///     },
///     instanceId: exampleAwsConnectInstance.id,
///     name: "example",
///     password: "Password123",
///     routingProfileId: exampleAwsConnectRoutingProfile.routingProfileId,
///     hierarchyGroupId: exampleAwsConnectUserHierarchyGroup.hierarchyGroupId,
///     securityProfileIds: [exampleAwsConnectSecurityProfile.securityProfileId],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.User("example",
///     identity_info={
///         "first_name": "example",
///         "last_name": "example2",
///     },
///     phone_config={
///         "after_contact_work_time_limit": 0,
///         "phone_type": "SOFT_PHONE",
///     },
///     instance_id=example_aws_connect_instance["id"],
///     name="example",
///     password="Password123",
///     routing_profile_id=example_aws_connect_routing_profile["routingProfileId"],
///     hierarchy_group_id=example_aws_connect_user_hierarchy_group["hierarchyGroupId"],
///     security_profile_ids=[example_aws_connect_security_profile["securityProfileId"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Connect.User("example", new()
///     {
///         IdentityInfo = new Aws.Connect.Inputs.UserIdentityInfoArgs
///         {
///             FirstName = "example",
///             LastName = "example2",
///         },
///         PhoneConfig = new Aws.Connect.Inputs.UserPhoneConfigArgs
///         {
///             AfterContactWorkTimeLimit = 0,
///             PhoneType = "SOFT_PHONE",
///         },
///         InstanceId = exampleAwsConnectInstance.Id,
///         Name = "example",
///         Password = "Password123",
///         RoutingProfileId = exampleAwsConnectRoutingProfile.RoutingProfileId,
///         HierarchyGroupId = exampleAwsConnectUserHierarchyGroup.HierarchyGroupId,
///         SecurityProfileIds = new[]
///         {
///             exampleAwsConnectSecurityProfile.SecurityProfileId,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewUser(ctx, "example", &connect.UserArgs{
/// 			IdentityInfo: &connect.UserIdentityInfoArgs{
/// 				FirstName: pulumi.String("example"),
/// 				LastName:  pulumi.String("example2"),
/// 			},
/// 			PhoneConfig: &connect.UserPhoneConfigArgs{
/// 				AfterContactWorkTimeLimit: pulumi.Int(0),
/// 				PhoneType:                 pulumi.String("SOFT_PHONE"),
/// 			},
/// 			InstanceId:       pulumi.Any(exampleAwsConnectInstance.Id),
/// 			Name:             pulumi.String("example"),
/// 			Password:         pulumi.String("Password123"),
/// 			RoutingProfileId: pulumi.Any(exampleAwsConnectRoutingProfile.RoutingProfileId),
/// 			HierarchyGroupId: pulumi.Any(exampleAwsConnectUserHierarchyGroup.HierarchyGroupId),
/// 			SecurityProfileIds: pulumi.StringArray{
/// 				exampleAwsConnectSecurityProfile.SecurityProfileId,
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
/// resource "aws_connect_user" "example" {
///   identity_info = {
///     first_name = "example"
///     last_name  = "example2"
///   }
///   phone_config = {
///     after_contact_work_time_limit = 0
///     phone_type                    = "SOFT_PHONE"
///   }
///   instance_id          = exampleAwsConnectInstance.id
///   name                 = "example"
///   password             = "Password123"
///   routing_profile_id   = exampleAwsConnectRoutingProfile.routingProfileId
///   hierarchy_group_id   = exampleAwsConnectUserHierarchyGroup.hierarchyGroupId
///   security_profile_ids = [exampleAwsConnectSecurityProfile.securityProfileId]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.User;
/// import com.pulumi.aws.connect.UserArgs;
/// import com.pulumi.aws.connect.inputs.UserIdentityInfoArgs;
/// import com.pulumi.aws.connect.inputs.UserPhoneConfigArgs;
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
///         var example = new User("example", UserArgs.builder()
///             .identityInfo(UserIdentityInfoArgs.builder()
///                 .firstName("example")
///                 .lastName("example2")
///                 .build())
///             .phoneConfig(UserPhoneConfigArgs.builder()
///                 .afterContactWorkTimeLimit(0)
///                 .phoneType("SOFT_PHONE")
///                 .build())
///             .instanceId(exampleAwsConnectInstance.id())
///             .name("example")
///             .password("Password123")
///             .routingProfileId(exampleAwsConnectRoutingProfile.routingProfileId())
///             .hierarchyGroupId(exampleAwsConnectUserHierarchyGroup.hierarchyGroupId())
///             .securityProfileIds(exampleAwsConnectSecurityProfile.securityProfileId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:connect:User
///     properties:
///       identityInfo:
///         firstName: example
///         lastName: example2
///       phoneConfig:
///         afterContactWorkTimeLimit: 0
///         phoneType: SOFT_PHONE
///       instanceId: ${exampleAwsConnectInstance.id}
///       name: example
///       password: Password123
///       routingProfileId: ${exampleAwsConnectRoutingProfile.routingProfileId}
///       hierarchyGroupId: ${exampleAwsConnectUserHierarchyGroup.hierarchyGroupId}
///       securityProfileIds:
///         - ${exampleAwsConnectSecurityProfile.securityProfileId}
/// ```
///
///
/// ### With identityInfo filled
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.User("example", {
///     identityInfo: {
///         email: "example@example.com",
///         firstName: "example",
///         lastName: "example2",
///         secondaryEmail: "secondary@example.com",
///     },
///     phoneConfig: {
///         afterContactWorkTimeLimit: 0,
///         phoneType: "SOFT_PHONE",
///     },
///     instanceId: exampleAwsConnectInstance.id,
///     name: "example",
///     password: "Password123",
///     routingProfileId: exampleAwsConnectRoutingProfile.routingProfileId,
///     securityProfileIds: [exampleAwsConnectSecurityProfile.securityProfileId],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.User("example",
///     identity_info={
///         "email": "example@example.com",
///         "first_name": "example",
///         "last_name": "example2",
///         "secondary_email": "secondary@example.com",
///     },
///     phone_config={
///         "after_contact_work_time_limit": 0,
///         "phone_type": "SOFT_PHONE",
///     },
///     instance_id=example_aws_connect_instance["id"],
///     name="example",
///     password="Password123",
///     routing_profile_id=example_aws_connect_routing_profile["routingProfileId"],
///     security_profile_ids=[example_aws_connect_security_profile["securityProfileId"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Connect.User("example", new()
///     {
///         IdentityInfo = new Aws.Connect.Inputs.UserIdentityInfoArgs
///         {
///             Email = "example@example.com",
///             FirstName = "example",
///             LastName = "example2",
///             SecondaryEmail = "secondary@example.com",
///         },
///         PhoneConfig = new Aws.Connect.Inputs.UserPhoneConfigArgs
///         {
///             AfterContactWorkTimeLimit = 0,
///             PhoneType = "SOFT_PHONE",
///         },
///         InstanceId = exampleAwsConnectInstance.Id,
///         Name = "example",
///         Password = "Password123",
///         RoutingProfileId = exampleAwsConnectRoutingProfile.RoutingProfileId,
///         SecurityProfileIds = new[]
///         {
///             exampleAwsConnectSecurityProfile.SecurityProfileId,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewUser(ctx, "example", &connect.UserArgs{
/// 			IdentityInfo: &connect.UserIdentityInfoArgs{
/// 				Email:          pulumi.String("example@example.com"),
/// 				FirstName:      pulumi.String("example"),
/// 				LastName:       pulumi.String("example2"),
/// 				SecondaryEmail: pulumi.String("secondary@example.com"),
/// 			},
/// 			PhoneConfig: &connect.UserPhoneConfigArgs{
/// 				AfterContactWorkTimeLimit: pulumi.Int(0),
/// 				PhoneType:                 pulumi.String("SOFT_PHONE"),
/// 			},
/// 			InstanceId:       pulumi.Any(exampleAwsConnectInstance.Id),
/// 			Name:             pulumi.String("example"),
/// 			Password:         pulumi.String("Password123"),
/// 			RoutingProfileId: pulumi.Any(exampleAwsConnectRoutingProfile.RoutingProfileId),
/// 			SecurityProfileIds: pulumi.StringArray{
/// 				exampleAwsConnectSecurityProfile.SecurityProfileId,
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
/// resource "aws_connect_user" "example" {
///   identity_info = {
///     email           = "example@example.com"
///     first_name      = "example"
///     last_name       = "example2"
///     secondary_email = "secondary@example.com"
///   }
///   phone_config = {
///     after_contact_work_time_limit = 0
///     phone_type                    = "SOFT_PHONE"
///   }
///   instance_id          = exampleAwsConnectInstance.id
///   name                 = "example"
///   password             = "Password123"
///   routing_profile_id   = exampleAwsConnectRoutingProfile.routingProfileId
///   security_profile_ids = [exampleAwsConnectSecurityProfile.securityProfileId]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.User;
/// import com.pulumi.aws.connect.UserArgs;
/// import com.pulumi.aws.connect.inputs.UserIdentityInfoArgs;
/// import com.pulumi.aws.connect.inputs.UserPhoneConfigArgs;
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
///         var example = new User("example", UserArgs.builder()
///             .identityInfo(UserIdentityInfoArgs.builder()
///                 .email("example@example.com")
///                 .firstName("example")
///                 .lastName("example2")
///                 .secondaryEmail("secondary@example.com")
///                 .build())
///             .phoneConfig(UserPhoneConfigArgs.builder()
///                 .afterContactWorkTimeLimit(0)
///                 .phoneType("SOFT_PHONE")
///                 .build())
///             .instanceId(exampleAwsConnectInstance.id())
///             .name("example")
///             .password("Password123")
///             .routingProfileId(exampleAwsConnectRoutingProfile.routingProfileId())
///             .securityProfileIds(exampleAwsConnectSecurityProfile.securityProfileId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:connect:User
///     properties:
///       identityInfo:
///         email: example@example.com
///         firstName: example
///         lastName: example2
///         secondaryEmail: secondary@example.com
///       phoneConfig:
///         afterContactWorkTimeLimit: 0
///         phoneType: SOFT_PHONE
///       instanceId: ${exampleAwsConnectInstance.id}
///       name: example
///       password: Password123
///       routingProfileId: ${exampleAwsConnectRoutingProfile.routingProfileId}
///       securityProfileIds:
///         - ${exampleAwsConnectSecurityProfile.securityProfileId}
/// ```
///
///
/// ### With phoneConfig phone type as desk phone
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.User("example", {
///     phoneConfig: {
///         afterContactWorkTimeLimit: 0,
///         phoneType: "SOFT_PHONE",
///     },
///     instanceId: exampleAwsConnectInstance.id,
///     name: "example",
///     password: "Password123",
///     routingProfileId: exampleAwsConnectRoutingProfile.routingProfileId,
///     securityProfileIds: [exampleAwsConnectSecurityProfile.securityProfileId],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.User("example",
///     phone_config={
///         "after_contact_work_time_limit": 0,
///         "phone_type": "SOFT_PHONE",
///     },
///     instance_id=example_aws_connect_instance["id"],
///     name="example",
///     password="Password123",
///     routing_profile_id=example_aws_connect_routing_profile["routingProfileId"],
///     security_profile_ids=[example_aws_connect_security_profile["securityProfileId"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Connect.User("example", new()
///     {
///         PhoneConfig = new Aws.Connect.Inputs.UserPhoneConfigArgs
///         {
///             AfterContactWorkTimeLimit = 0,
///             PhoneType = "SOFT_PHONE",
///         },
///         InstanceId = exampleAwsConnectInstance.Id,
///         Name = "example",
///         Password = "Password123",
///         RoutingProfileId = exampleAwsConnectRoutingProfile.RoutingProfileId,
///         SecurityProfileIds = new[]
///         {
///             exampleAwsConnectSecurityProfile.SecurityProfileId,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewUser(ctx, "example", &connect.UserArgs{
/// 			PhoneConfig: &connect.UserPhoneConfigArgs{
/// 				AfterContactWorkTimeLimit: pulumi.Int(0),
/// 				PhoneType:                 pulumi.String("SOFT_PHONE"),
/// 			},
/// 			InstanceId:       pulumi.Any(exampleAwsConnectInstance.Id),
/// 			Name:             pulumi.String("example"),
/// 			Password:         pulumi.String("Password123"),
/// 			RoutingProfileId: pulumi.Any(exampleAwsConnectRoutingProfile.RoutingProfileId),
/// 			SecurityProfileIds: pulumi.StringArray{
/// 				exampleAwsConnectSecurityProfile.SecurityProfileId,
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
/// resource "aws_connect_user" "example" {
///   phone_config = {
///     after_contact_work_time_limit = 0
///     phone_type                    = "SOFT_PHONE"
///   }
///   instance_id          = exampleAwsConnectInstance.id
///   name                 = "example"
///   password             = "Password123"
///   routing_profile_id   = exampleAwsConnectRoutingProfile.routingProfileId
///   security_profile_ids = [exampleAwsConnectSecurityProfile.securityProfileId]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.User;
/// import com.pulumi.aws.connect.UserArgs;
/// import com.pulumi.aws.connect.inputs.UserPhoneConfigArgs;
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
///         var example = new User("example", UserArgs.builder()
///             .phoneConfig(UserPhoneConfigArgs.builder()
///                 .afterContactWorkTimeLimit(0)
///                 .phoneType("SOFT_PHONE")
///                 .build())
///             .instanceId(exampleAwsConnectInstance.id())
///             .name("example")
///             .password("Password123")
///             .routingProfileId(exampleAwsConnectRoutingProfile.routingProfileId())
///             .securityProfileIds(exampleAwsConnectSecurityProfile.securityProfileId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:connect:User
///     properties:
///       phoneConfig:
///         afterContactWorkTimeLimit: 0
///         phoneType: SOFT_PHONE
///       instanceId: ${exampleAwsConnectInstance.id}
///       name: example
///       password: Password123
///       routingProfileId: ${exampleAwsConnectRoutingProfile.routingProfileId}
///       securityProfileIds:
///         - ${exampleAwsConnectSecurityProfile.securityProfileId}
/// ```
///
///
/// ### With multiple Security profile ids specified in securityProfileIds
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.User("example", {
///     phoneConfig: {
///         afterContactWorkTimeLimit: 0,
///         autoAccept: false,
///         deskPhoneNumber: "+112345678912",
///         phoneType: "DESK_PHONE",
///     },
///     instanceId: exampleAwsConnectInstance.id,
///     name: "example",
///     password: "Password123",
///     routingProfileId: exampleAwsConnectRoutingProfile.routingProfileId,
///     securityProfileIds: [
///         exampleAwsConnectSecurityProfile.securityProfileId,
///         example2.securityProfileId,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.User("example",
///     phone_config={
///         "after_contact_work_time_limit": 0,
///         "auto_accept": False,
///         "desk_phone_number": "+112345678912",
///         "phone_type": "DESK_PHONE",
///     },
///     instance_id=example_aws_connect_instance["id"],
///     name="example",
///     password="Password123",
///     routing_profile_id=example_aws_connect_routing_profile["routingProfileId"],
///     security_profile_ids=[
///         example_aws_connect_security_profile["securityProfileId"],
///         example2["securityProfileId"],
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Connect.User("example", new()
///     {
///         PhoneConfig = new Aws.Connect.Inputs.UserPhoneConfigArgs
///         {
///             AfterContactWorkTimeLimit = 0,
///             AutoAccept = false,
///             DeskPhoneNumber = "+112345678912",
///             PhoneType = "DESK_PHONE",
///         },
///         InstanceId = exampleAwsConnectInstance.Id,
///         Name = "example",
///         Password = "Password123",
///         RoutingProfileId = exampleAwsConnectRoutingProfile.RoutingProfileId,
///         SecurityProfileIds = new[]
///         {
///             exampleAwsConnectSecurityProfile.SecurityProfileId,
///             example2.SecurityProfileId,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewUser(ctx, "example", &connect.UserArgs{
/// 			PhoneConfig: &connect.UserPhoneConfigArgs{
/// 				AfterContactWorkTimeLimit: pulumi.Int(0),
/// 				AutoAccept:                pulumi.Bool(false),
/// 				DeskPhoneNumber:           pulumi.String("+112345678912"),
/// 				PhoneType:                 pulumi.String("DESK_PHONE"),
/// 			},
/// 			InstanceId:       pulumi.Any(exampleAwsConnectInstance.Id),
/// 			Name:             pulumi.String("example"),
/// 			Password:         pulumi.String("Password123"),
/// 			RoutingProfileId: pulumi.Any(exampleAwsConnectRoutingProfile.RoutingProfileId),
/// 			SecurityProfileIds: pulumi.StringArray{
/// 				exampleAwsConnectSecurityProfile.SecurityProfileId,
/// 				example2.SecurityProfileId,
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
/// resource "aws_connect_user" "example" {
///   phone_config = {
///     after_contact_work_time_limit = 0
///     auto_accept                   = false
///     desk_phone_number             = "+112345678912"
///     phone_type                    = "DESK_PHONE"
///   }
///   instance_id          = exampleAwsConnectInstance.id
///   name                 = "example"
///   password             = "Password123"
///   routing_profile_id   = exampleAwsConnectRoutingProfile.routingProfileId
///   security_profile_ids = [exampleAwsConnectSecurityProfile.securityProfileId, example2.securityProfileId]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.User;
/// import com.pulumi.aws.connect.UserArgs;
/// import com.pulumi.aws.connect.inputs.UserPhoneConfigArgs;
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
///         var example = new User("example", UserArgs.builder()
///             .phoneConfig(UserPhoneConfigArgs.builder()
///                 .afterContactWorkTimeLimit(0)
///                 .autoAccept(false)
///                 .deskPhoneNumber("+112345678912")
///                 .phoneType("DESK_PHONE")
///                 .build())
///             .instanceId(exampleAwsConnectInstance.id())
///             .name("example")
///             .password("Password123")
///             .routingProfileId(exampleAwsConnectRoutingProfile.routingProfileId())
///             .securityProfileIds(
///                 exampleAwsConnectSecurityProfile.securityProfileId(),
///                 example2.securityProfileId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:connect:User
///     properties:
///       phoneConfig:
///         afterContactWorkTimeLimit: 0
///         autoAccept: false
///         deskPhoneNumber: '+112345678912'
///         phoneType: DESK_PHONE
///       instanceId: ${exampleAwsConnectInstance.id}
///       name: example
///       password: Password123
///       routingProfileId: ${exampleAwsConnectRoutingProfile.routingProfileId}
///       securityProfileIds:
///         - ${exampleAwsConnectSecurityProfile.securityProfileId}
///         - ${example2.securityProfileId}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect Users using the `instanceId` and `userId` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/user:User example f1288a1f-6193-445a-b47e-af739b2:c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5
/// ```
class User extends pulumi.CustomResource {
  /// ARN of the user.
  late final pulumi.Output<String> arn;
  /// The identifier of the user account in the directory used for identity management. If Amazon Connect cannot access the directory, you can specify this identifier to authenticate users. If you include the identifier, we assume that Amazon Connect cannot access the directory. Otherwise, the identity information is used to authenticate users from your directory. This parameter is required if you are using an existing directory for identity management in Amazon Connect when Amazon Connect cannot access your directory to authenticate users. If you are using SAML for identity management and include this parameter, an error is returned.
  late final pulumi.Output<String> directoryUserId;
  /// The identifier of the hierarchy group for the user.
  late final pulumi.Output<String?> hierarchyGroupId;
  /// A block that contains information about the identity of the user. Documented below.
  late final pulumi.Output<UserIdentityInfo?> identityInfo;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final pulumi.Output<String> instanceId;
  /// The user name for the account. For instances not using SAML for identity management, the user name can include up to 20 characters. If you are using SAML for identity management, the user name can include up to 64 characters from `[a-zA-Z0-9_-.\@]+`.
  late final pulumi.Output<String> name;
  /// The password for the user account. A password is required if you are using Amazon Connect for identity management. Otherwise, it is an error to include a password.
  late final pulumi.Output<String?> password;
  /// A block that contains information about the phone settings for the user. Documented below.
  late final pulumi.Output<UserPhoneConfig> phoneConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The identifier of the routing profile for the user.
  late final pulumi.Output<String> routingProfileId;
  /// A list of identifiers for the security profiles for the user. Specify a minimum of 1 and maximum of 10 security profile ids. For more information, see [Best Practices for Security Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-best-practices.html) in the Amazon Connect Administrator Guide.
  late final pulumi.Output<List<String>> securityProfileIds;
  /// Tags to apply to the user. If configured with a provider
  /// `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The identifier for the user.
  late final pulumi.Output<String> userId;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_connect_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
          additionalSecretOutputs: const ['password'],
        ) {
    arn = registerOutput<String>('arn');
    directoryUserId = registerOutput<String>('directoryUserId');
    hierarchyGroupId = registerOutput<String?>('hierarchyGroupId');
    identityInfo = registerOutput<UserIdentityInfo?>('identityInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UserIdentityInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password', isSecret: true);
    phoneConfig = registerOutput<UserPhoneConfig>('phoneConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UserPhoneConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    routingProfileId = registerOutput<String>('routingProfileId');
    securityProfileIds = registerOutput<List<String>>('securityProfileIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    userId = registerOutput<String>('userId');
  }

  /// Gets an existing [User] resource's state with the given [name] and [id].
  static User get(
    String name,
    pulumi.Input<String> id, {
    UserState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return User._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  User._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/user:User',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    directoryUserId = registerOutput<String>('directoryUserId');
    hierarchyGroupId = registerOutput<String?>('hierarchyGroupId');
    identityInfo = registerOutput<UserIdentityInfo?>('identityInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UserIdentityInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password', isSecret: true);
    phoneConfig = registerOutput<UserPhoneConfig>('phoneConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UserPhoneConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    routingProfileId = registerOutput<String>('routingProfileId');
    securityProfileIds = registerOutput<List<String>>('securityProfileIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    userId = registerOutput<String>('userId');
  }

  /// Creates a typed reference to an existing [User] resource.
  User.reference(String urn)
    : super(
        'aws:connect/user:User',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['password'],
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    directoryUserId = registerOutput<String>('directoryUserId');
    hierarchyGroupId = registerOutput<String?>('hierarchyGroupId');
    identityInfo = registerOutput<UserIdentityInfo?>('identityInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UserIdentityInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password', isSecret: true);
    phoneConfig = registerOutput<UserPhoneConfig>('phoneConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UserPhoneConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    routingProfileId = registerOutput<String>('routingProfileId');
    securityProfileIds = registerOutput<List<String>>('securityProfileIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    userId = registerOutput<String>('userId');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'association_args.dart';
import 'association_output_location.dart';
import 'association_target.dart';

/// Associates an SSM Document to an instance or EC2 tag.
///
/// ## Example Usage
///
/// ### Create an association for a specific instance
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ssm.Association("example", {
///     name: exampleAwsSsmDocument.name,
///     targets: [{
///         key: "InstanceIds",
///         values: [exampleAwsInstance.id],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssm.Association("example",
///     name=example_aws_ssm_document["name"],
///     targets=[{
///         "key": "InstanceIds",
///         "values": [example_aws_instance["id"]],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ssm.Association("example", new()
///     {
///         Name = exampleAwsSsmDocument.Name,
///         Targets = new[]
///         {
///             new Aws.Ssm.Inputs.AssociationTargetArgs
///             {
///                 Key = "InstanceIds",
///                 Values = new[]
///                 {
///                     exampleAwsInstance.Id,
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.NewAssociation(ctx, "example", &ssm.AssociationArgs{
/// 			Name: pulumi.Any(exampleAwsSsmDocument.Name),
/// 			Targets: ssm.AssociationTargetArray{
/// 				&ssm.AssociationTargetArgs{
/// 					Key: pulumi.String("InstanceIds"),
/// 					Values: pulumi.StringArray{
/// 						exampleAwsInstance.Id,
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssm.Association;
/// import com.pulumi.aws.ssm.AssociationArgs;
/// import com.pulumi.aws.ssm.inputs.AssociationTargetArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new Association("example", AssociationArgs.builder()
///             .name(exampleAwsSsmDocument.name())
///             .targets(AssociationTargetArgs.builder()
///                 .key("InstanceIds")
///                 .values(exampleAwsInstance.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssm:Association
///     properties:
///       name: ${exampleAwsSsmDocument.name}
///       targets:
///         - key: InstanceIds
///           values:
///             - ${exampleAwsInstance.id}
/// ```
///
///
/// ### Create an association for all managed instances in an AWS account
///
/// To target all managed instances in an AWS account, set the `key` as `"InstanceIds"` with `values` set as `["*"]`. This example also illustrates how to use an Amazon owned SSM document named `AmazonCloudWatch-ManageAgent`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ssm.Association("example", {
///     name: "AmazonCloudWatch-ManageAgent",
///     targets: [{
///         key: "InstanceIds",
///         values: ["*"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssm.Association("example",
///     name="AmazonCloudWatch-ManageAgent",
///     targets=[{
///         "key": "InstanceIds",
///         "values": ["*"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ssm.Association("example", new()
///     {
///         Name = "AmazonCloudWatch-ManageAgent",
///         Targets = new[]
///         {
///             new Aws.Ssm.Inputs.AssociationTargetArgs
///             {
///                 Key = "InstanceIds",
///                 Values = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.NewAssociation(ctx, "example", &ssm.AssociationArgs{
/// 			Name: pulumi.String("AmazonCloudWatch-ManageAgent"),
/// 			Targets: ssm.AssociationTargetArray{
/// 				&ssm.AssociationTargetArgs{
/// 					Key: pulumi.String("InstanceIds"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssm.Association;
/// import com.pulumi.aws.ssm.AssociationArgs;
/// import com.pulumi.aws.ssm.inputs.AssociationTargetArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new Association("example", AssociationArgs.builder()
///             .name("AmazonCloudWatch-ManageAgent")
///             .targets(AssociationTargetArgs.builder()
///                 .key("InstanceIds")
///                 .values("*")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssm:Association
///     properties:
///       name: AmazonCloudWatch-ManageAgent
///       targets:
///         - key: InstanceIds
///           values:
///             - '*'
/// ```
///
///
/// ### Create an association for a specific tag
///
/// This example shows how to target all managed instances that are assigned a tag key of `Environment` and value of `Development`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ssm.Association("example", {
///     name: "AmazonCloudWatch-ManageAgent",
///     targets: [{
///         key: "tag:Environment",
///         values: ["Development"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssm.Association("example",
///     name="AmazonCloudWatch-ManageAgent",
///     targets=[{
///         "key": "tag:Environment",
///         "values": ["Development"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ssm.Association("example", new()
///     {
///         Name = "AmazonCloudWatch-ManageAgent",
///         Targets = new[]
///         {
///             new Aws.Ssm.Inputs.AssociationTargetArgs
///             {
///                 Key = "tag:Environment",
///                 Values = new[]
///                 {
///                     "Development",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.NewAssociation(ctx, "example", &ssm.AssociationArgs{
/// 			Name: pulumi.String("AmazonCloudWatch-ManageAgent"),
/// 			Targets: ssm.AssociationTargetArray{
/// 				&ssm.AssociationTargetArgs{
/// 					Key: pulumi.String("tag:Environment"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("Development"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssm.Association;
/// import com.pulumi.aws.ssm.AssociationArgs;
/// import com.pulumi.aws.ssm.inputs.AssociationTargetArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new Association("example", AssociationArgs.builder()
///             .name("AmazonCloudWatch-ManageAgent")
///             .targets(AssociationTargetArgs.builder()
///                 .key("tag:Environment")
///                 .values("Development")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssm:Association
///     properties:
///       name: AmazonCloudWatch-ManageAgent
///       targets:
///         - key: tag:Environment
///           values:
///             - Development
/// ```
///
///
/// ### Create an association with a specific schedule
///
/// This example shows how to schedule an association in various ways.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ssm.Association("example", {
///     name: exampleAwsSsmDocument.name,
///     scheduleExpression: "cron(0 2 ? * SUN *)",
///     targets: [{
///         key: "InstanceIds",
///         values: [exampleAwsInstance.id],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssm.Association("example",
///     name=example_aws_ssm_document["name"],
///     schedule_expression="cron(0 2 ? * SUN *)",
///     targets=[{
///         "key": "InstanceIds",
///         "values": [example_aws_instance["id"]],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ssm.Association("example", new()
///     {
///         Name = exampleAwsSsmDocument.Name,
///         ScheduleExpression = "cron(0 2 ? * SUN *)",
///         Targets = new[]
///         {
///             new Aws.Ssm.Inputs.AssociationTargetArgs
///             {
///                 Key = "InstanceIds",
///                 Values = new[]
///                 {
///                     exampleAwsInstance.Id,
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.NewAssociation(ctx, "example", &ssm.AssociationArgs{
/// 			Name:               pulumi.Any(exampleAwsSsmDocument.Name),
/// 			ScheduleExpression: pulumi.String("cron(0 2 ? * SUN *)"),
/// 			Targets: ssm.AssociationTargetArray{
/// 				&ssm.AssociationTargetArgs{
/// 					Key: pulumi.String("InstanceIds"),
/// 					Values: pulumi.StringArray{
/// 						exampleAwsInstance.Id,
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssm.Association;
/// import com.pulumi.aws.ssm.AssociationArgs;
/// import com.pulumi.aws.ssm.inputs.AssociationTargetArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new Association("example", AssociationArgs.builder()
///             .name(exampleAwsSsmDocument.name())
///             .scheduleExpression("cron(0 2 ? * SUN *)")
///             .targets(AssociationTargetArgs.builder()
///                 .key("InstanceIds")
///                 .values(exampleAwsInstance.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssm:Association
///     properties:
///       name: ${exampleAwsSsmDocument.name}
///       scheduleExpression: cron(0 2 ? * SUN *)
///       targets:
///         - key: InstanceIds
///           values:
///             - ${exampleAwsInstance.id}
/// ```
///
///
/// ### Create an association with multiple instances with their instance ids
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// // First EC2 instance
/// const webServer1 = new aws.ec2.Instance("web_server_1", {
///     ami: amazonLinux.id,
///     instanceType: aws.ec2.InstanceType.T3_Micro,
///     subnetId: _public.id,
///     vpcSecurityGroupIds: [ec2Sg.id],
///     iamInstanceProfile: ec2SsmProfile.name,
///     userData: `#!/bin/bash
/// yum update -y
/// yum install -y amazon-ssm-agent
/// systemctl enable amazon-ssm-agent
/// systemctl start amazon-ssm-agent
/// `,
/// });
/// // Second EC2 instance
/// const webServer2 = new aws.ec2.Instance("web_server_2", {
///     ami: amazonLinux.id,
///     instanceType: aws.ec2.InstanceType.T3_Micro,
///     subnetId: _public.id,
///     vpcSecurityGroupIds: [ec2Sg.id],
///     iamInstanceProfile: ec2SsmProfile.name,
///     userData: `#!/bin/bash
/// yum update -y
/// yum install -y amazon-ssm-agent
/// systemctl enable amazon-ssm-agent
/// systemctl start amazon-ssm-agent
/// `,
/// });
/// // Removed EC2 provisioning dependencies for brevity
/// const systemUpdate = new aws.ssm.Association("system_update", {
///     name: "AWS-RunShellScript",
///     targets: [{
///         key: "InstanceIds",
///         values: [
///             webServer1.id,
///             webServer2.id,
///         ],
///     }],
///     scheduleExpression: "cron(0 2 ? * SUN *)",
///     parameters: {
///         commands: std.join({
///             separator: "\n",
///             input: [
///                 "#!/bin/bash",
///                 "echo 'Starting system update on $(hostname)'",
///                 "echo 'Instance ID: $(curl -s http://169.254.169.254/latest/meta-data/instance-id)'",
///                 "yum update -y",
///                 "echo 'System update completed successfully'",
///                 "systemctl status httpd",
///                 "df -h",
///                 "free -m",
///             ],
///         }).then(invoke => invoke.result),
///         workingDirectory: "/tmp",
///         executionTimeout: "3600",
///     },
///     associationName: "weekly-system-update",
///     complianceSeverity: "MEDIUM",
///     maxConcurrency: "1",
///     maxErrors: "0",
///     tags: {
///         Name: "Weekly System Update",
///         Environment: "demo",
///         Purpose: "maintenance",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// # First EC2 instance
/// web_server1 = aws.ec2.Instance("web_server_1",
///     ami=amazon_linux["id"],
///     instance_type=aws.ec2.InstanceType.T3_MICRO,
///     subnet_id=public["id"],
///     vpc_security_group_ids=[ec2_sg["id"]],
///     iam_instance_profile=ec2_ssm_profile["name"],
///     user_data="""#!/bin/bash
/// yum update -y
/// yum install -y amazon-ssm-agent
/// systemctl enable amazon-ssm-agent
/// systemctl start amazon-ssm-agent
/// """)
/// # Second EC2 instance
/// web_server2 = aws.ec2.Instance("web_server_2",
///     ami=amazon_linux["id"],
///     instance_type=aws.ec2.InstanceType.T3_MICRO,
///     subnet_id=public["id"],
///     vpc_security_group_ids=[ec2_sg["id"]],
///     iam_instance_profile=ec2_ssm_profile["name"],
///     user_data="""#!/bin/bash
/// yum update -y
/// yum install -y amazon-ssm-agent
/// systemctl enable amazon-ssm-agent
/// systemctl start amazon-ssm-agent
/// """)
/// # Removed EC2 provisioning dependencies for brevity
/// system_update = aws.ssm.Association("system_update",
///     name="AWS-RunShellScript",
///     targets=[{
///         "key": "InstanceIds",
///         "values": [
///             web_server1.id,
///             web_server2.id,
///         ],
///     }],
///     schedule_expression="cron(0 2 ? * SUN *)",
///     parameters={
///         "commands": std.join(separator="\n",
///             input=[
///                 "#!/bin/bash",
///                 "echo 'Starting system update on $(hostname)'",
///                 "echo 'Instance ID: $(curl -s http://169.254.169.254/latest/meta-data/instance-id)'",
///                 "yum update -y",
///                 "echo 'System update completed successfully'",
///                 "systemctl status httpd",
///                 "df -h",
///                 "free -m",
///             ]).result,
///         "workingDirectory": "/tmp",
///         "executionTimeout": "3600",
///     },
///     association_name="weekly-system-update",
///     compliance_severity="MEDIUM",
///     max_concurrency="1",
///     max_errors="0",
///     tags={
///         "Name": "Weekly System Update",
///         "Environment": "demo",
///         "Purpose": "maintenance",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // First EC2 instance
///     var webServer1 = new Aws.Ec2.Instance("web_server_1", new()
///     {
///         Ami = amazonLinux.Id,
///         InstanceType = Aws.Ec2.InstanceType.T3_Micro,
///         SubnetId = @public.Id,
///         VpcSecurityGroupIds = new[]
///         {
///             ec2Sg.Id,
///         },
///         IamInstanceProfile = ec2SsmProfile.Name,
///         UserData = @"#!/bin/bash
/// yum update -y
/// yum install -y amazon-ssm-agent
/// systemctl enable amazon-ssm-agent
/// systemctl start amazon-ssm-agent
/// ",
///     });
///
///     // Second EC2 instance
///     var webServer2 = new Aws.Ec2.Instance("web_server_2", new()
///     {
///         Ami = amazonLinux.Id,
///         InstanceType = Aws.Ec2.InstanceType.T3_Micro,
///         SubnetId = @public.Id,
///         VpcSecurityGroupIds = new[]
///         {
///             ec2Sg.Id,
///         },
///         IamInstanceProfile = ec2SsmProfile.Name,
///         UserData = @"#!/bin/bash
/// yum update -y
/// yum install -y amazon-ssm-agent
/// systemctl enable amazon-ssm-agent
/// systemctl start amazon-ssm-agent
/// ",
///     });
///
///     // Removed EC2 provisioning dependencies for brevity
///     var systemUpdate = new Aws.Ssm.Association("system_update", new()
///     {
///         Name = "AWS-RunShellScript",
///         Targets = new[]
///         {
///             new Aws.Ssm.Inputs.AssociationTargetArgs
///             {
///                 Key = "InstanceIds",
///                 Values = new[]
///                 {
///                     webServer1.Id,
///                     webServer2.Id,
///                 },
///             },
///         },
///         ScheduleExpression = "cron(0 2 ? * SUN *)",
///         Parameters =
///         {
///             { "commands", Std.Join.Invoke(new()
///             {
///                 Separator = @"
/// ",
///                 Input = new[]
///                 {
///                     "#!/bin/bash",
///                     "echo 'Starting system update on $(hostname)'",
///                     "echo 'Instance ID: $(curl -s http://169.254.169.254/latest/meta-data/instance-id)'",
///                     "yum update -y",
///                     "echo 'System update completed successfully'",
///                     "systemctl status httpd",
///                     "df -h",
///                     "free -m",
///                 },
///             }).Apply(invoke => invoke.Result) },
///             { "workingDirectory", "/tmp" },
///             { "executionTimeout", "3600" },
///         },
///         AssociationName = "weekly-system-update",
///         ComplianceSeverity = "MEDIUM",
///         MaxConcurrency = "1",
///         MaxErrors = "0",
///         Tags =
///         {
///             { "Name", "Weekly System Update" },
///             { "Environment", "demo" },
///             { "Purpose", "maintenance" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// First EC2 instance
/// 		webServer1, err := ec2.NewInstance(ctx, "web_server_1", &ec2.InstanceArgs{
/// 			Ami:          pulumi.Any(amazonLinux.Id),
/// 			InstanceType: pulumi.String(ec2.InstanceType_T3_Micro),
/// 			SubnetId:     pulumi.Any(public.Id),
/// 			VpcSecurityGroupIds: pulumi.StringArray{
/// 				ec2Sg.Id,
/// 			},
/// 			IamInstanceProfile: pulumi.Any(ec2SsmProfile.Name),
/// 			UserData: pulumi.String(`#!/bin/bash
/// yum update -y
/// yum install -y amazon-ssm-agent
/// systemctl enable amazon-ssm-agent
/// systemctl start amazon-ssm-agent
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Second EC2 instance
/// 		webServer2, err := ec2.NewInstance(ctx, "web_server_2", &ec2.InstanceArgs{
/// 			Ami:          pulumi.Any(amazonLinux.Id),
/// 			InstanceType: pulumi.String(ec2.InstanceType_T3_Micro),
/// 			SubnetId:     pulumi.Any(public.Id),
/// 			VpcSecurityGroupIds: pulumi.StringArray{
/// 				ec2Sg.Id,
/// 			},
/// 			IamInstanceProfile: pulumi.Any(ec2SsmProfile.Name),
/// 			UserData: pulumi.String(`#!/bin/bash
/// yum update -y
/// yum install -y amazon-ssm-agent
/// systemctl enable amazon-ssm-agent
/// systemctl start amazon-ssm-agent
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeJoin, err := std.Join(ctx, &std.JoinArgs{
/// 			Separator: "\n",
/// 			Input: []string{
/// 				"#!/bin/bash",
/// 				"echo 'Starting system update on $(hostname)'",
/// 				"echo 'Instance ID: $(curl -s http://169.254.169.254/latest/meta-data/instance-id)'",
/// 				"yum update -y",
/// 				"echo 'System update completed successfully'",
/// 				"systemctl status httpd",
/// 				"df -h",
/// 				"free -m",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Removed EC2 provisioning dependencies for brevity
/// 		_, err = ssm.NewAssociation(ctx, "system_update", &ssm.AssociationArgs{
/// 			Name: pulumi.String("AWS-RunShellScript"),
/// 			Targets: ssm.AssociationTargetArray{
/// 				&ssm.AssociationTargetArgs{
/// 					Key: pulumi.String("InstanceIds"),
/// 					Values: pulumi.StringArray{
/// 						webServer1.ID(),
/// 						webServer2.ID(),
/// 					},
/// 				},
/// 			},
/// 			ScheduleExpression: pulumi.String("cron(0 2 ? * SUN *)"),
/// 			Parameters: pulumi.StringMap{
/// 				"commands":         pulumi.String(invokeJoin.Result),
/// 				"workingDirectory": pulumi.String("/tmp"),
/// 				"executionTimeout": pulumi.String("3600"),
/// 			},
/// 			AssociationName:    pulumi.String("weekly-system-update"),
/// 			ComplianceSeverity: pulumi.String("MEDIUM"),
/// 			MaxConcurrency:     pulumi.String("1"),
/// 			MaxErrors:          pulumi.String("0"),
/// 			Tags: pulumi.StringMap{
/// 				"Name":        pulumi.String("Weekly System Update"),
/// 				"Environment": pulumi.String("demo"),
/// 				"Purpose":     pulumi.String("maintenance"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.ec2.InstanceArgs;
/// import com.pulumi.aws.ssm.Association;
/// import com.pulumi.aws.ssm.AssociationArgs;
/// import com.pulumi.aws.ssm.inputs.AssociationTargetArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JoinArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         // First EC2 instance
///         var webServer1 = new Instance("webServer1", InstanceArgs.builder()
///             .ami(amazonLinux.id())
///             .instanceType("t3.micro")
///             .subnetId(public_.id())
///             .vpcSecurityGroupIds(ec2Sg.id())
///             .iamInstanceProfile(ec2SsmProfile.name())
///             .userData("""
/// #!/bin/bash
/// yum update -y
/// yum install -y amazon-ssm-agent
/// systemctl enable amazon-ssm-agent
/// systemctl start amazon-ssm-agent
///             """)
///             .build());
///
///         // Second EC2 instance
///         var webServer2 = new Instance("webServer2", InstanceArgs.builder()
///             .ami(amazonLinux.id())
///             .instanceType("t3.micro")
///             .subnetId(public_.id())
///             .vpcSecurityGroupIds(ec2Sg.id())
///             .iamInstanceProfile(ec2SsmProfile.name())
///             .userData("""
/// #!/bin/bash
/// yum update -y
/// yum install -y amazon-ssm-agent
/// systemctl enable amazon-ssm-agent
/// systemctl start amazon-ssm-agent
///             """)
///             .build());
///
///         // Removed EC2 provisioning dependencies for brevity
///         var systemUpdate = new Association("systemUpdate", AssociationArgs.builder()
///             .name("AWS-RunShellScript")
///             .targets(AssociationTargetArgs.builder()
///                 .key("InstanceIds")
///                 .values(
///                     webServer1.id(),
///                     webServer2.id())
///                 .build())
///             .scheduleExpression("cron(0 2 ? * SUN *)")
///             .parameters(Map.ofEntries(
///                 Map.entry("commands", StdFunctions.join(JoinArgs.builder()
///                     .separator("""
///
///                     """)
///                     .input(
///                         "#!/bin/bash",
///                         "echo 'Starting system update on $(hostname)'",
///                         "echo 'Instance ID: $(curl -s http://169.254.169.254/latest/meta-data/instance-id)'",
///                         "yum update -y",
///                         "echo 'System update completed successfully'",
///                         "systemctl status httpd",
///                         "df -h",
///                         "free -m")
///                     .build()).result()),
///                 Map.entry("workingDirectory", "/tmp"),
///                 Map.entry("executionTimeout", "3600")
///             ))
///             .associationName("weekly-system-update")
///             .complianceSeverity("MEDIUM")
///             .maxConcurrency("1")
///             .maxErrors("0")
///             .tags(Map.ofEntries(
///                 Map.entry("Name", "Weekly System Update"),
///                 Map.entry("Environment", "demo"),
///                 Map.entry("Purpose", "maintenance")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Removed EC2 provisioning dependencies for brevity
///   systemUpdate:
///     type: aws:ssm:Association
///     name: system_update
///     properties:
///       name: AWS-RunShellScript
///       targets:
///         - key: InstanceIds
///           values:
///             - ${webServer1.id}
///             - ${webServer2.id}
///       scheduleExpression: cron(0 2 ? * SUN *)
///       parameters:
///         commands:
///           fn::invoke:
///             function: std:join
///             arguments:
///               separator: |2+
///               input:
///                 - '#!/bin/bash'
///                 - echo 'Starting system update on $(hostname)'
///                 - 'echo ''Instance ID: $(curl -s http://169.254.169.254/latest/meta-data/instance-id)'''
///                 - yum update -y
///                 - echo 'System update completed successfully'
///                 - systemctl status httpd
///                 - df -h
///                 - free -m
///             return: result
///         workingDirectory: /tmp
///         executionTimeout: '3600'
///       associationName: weekly-system-update
///       complianceSeverity: MEDIUM
///       maxConcurrency: '1'
///       maxErrors: '0'
///       tags:
///         Name: Weekly System Update
///         Environment: demo
///         Purpose: maintenance
///   # First EC2 instance
///   webServer1:
///     type: aws:ec2:Instance
///     name: web_server_1
///     properties:
///       ami: ${amazonLinux.id}
///       instanceType: t3.micro
///       subnetId: ${public.id}
///       vpcSecurityGroupIds:
///         - ${ec2Sg.id}
///       iamInstanceProfile: ${ec2SsmProfile.name}
///       userData: |
///         #!/bin/bash
///         yum update -y
///         yum install -y amazon-ssm-agent
///         systemctl enable amazon-ssm-agent
///         systemctl start amazon-ssm-agent
///   # Second EC2 instance
///   webServer2:
///     type: aws:ec2:Instance
///     name: web_server_2
///     properties:
///       ami: ${amazonLinux.id}
///       instanceType: t3.micro
///       subnetId: ${public.id}
///       vpcSecurityGroupIds:
///         - ${ec2Sg.id}
///       iamInstanceProfile: ${ec2SsmProfile.name}
///       userData: |
///         #!/bin/bash
///         yum update -y
///         yum install -y amazon-ssm-agent
///         systemctl enable amazon-ssm-agent
///         systemctl start amazon-ssm-agent
/// ```
///
///
/// ### Create an association with multiple instances with their values matching their tags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// // SSM Association for Webbased Servers
/// const databaseAssociation = new aws.ssm.Association("database_association", {
///     name: systemUpdate.name,
///     targets: [{
///         key: "tag:Role",
///         values: [
///             "WebServer",
///             "Database",
///         ],
///     }],
///     parameters: {
///         restartServices: "true",
///     },
///     scheduleExpression: "cron(0 3 ? * SUN *)",
/// });
/// // EC2 Instance 1 - Web Server with "ServerType" tag
/// const webServer = new aws.ec2.Instance("web_server", {
///     ami: amazonLinux.id,
///     instanceType: aws.ec2.InstanceType.T3_Micro,
///     subnetId: _default.id,
///     vpcSecurityGroupIds: [ec2Sg.id],
///     iamInstanceProfile: ec2SsmProfile.name,
///     userData: std.base64encode({
///         input: `#!/bin/bash
/// yum update -y
/// yum install -y amazon-ssm-agent
/// systemctl enable amazon-ssm-agent
/// systemctl start amazon-ssm-agent
///
/// # Install Apache web server
/// yum install -y httpd
/// systemctl enable httpd
/// systemctl start httpd
/// echo \"<h1>Web Server - ${prefix}</h1>\" > /var/www/html/index.html
/// `,
///     }).then(invoke => invoke.result),
///     tags: {
///         Name: `${prefix}-web-server`,
///         ServerType: "WebServer",
///         Role: "WebServer",
///         Environment: environment,
///         Owner: owner,
///     },
/// });
/// // EC2 Instance 2 - Database Server with "Role" tag
/// const databaseServer = new aws.ec2.Instance("database_server", {
///     ami: amazonLinux.id,
///     instanceType: aws.ec2.InstanceType.T3_Micro,
///     subnetId: _default.id,
///     vpcSecurityGroupIds: [ec2Sg.id],
///     iamInstanceProfile: ec2SsmProfile.name,
///     userData: std.base64encode({
///         input: `#!/bin/bash
/// yum update -y
/// yum install -y amazon-ssm-agent
/// systemctl enable amazon-ssm-agent
/// systemctl start amazon-ssm-agent
///
/// # Install MySQL
/// yum install -y mysql-server
/// systemctl enable mysqld
/// systemctl start mysqld
/// `,
///     }).then(invoke => invoke.result),
///     tags: {
///         Name: `${prefix}-database-server`,
///         Role: "Database",
///         Environment: environment,
///         Owner: owner,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// # SSM Association for Webbased Servers
/// database_association = aws.ssm.Association("database_association",
///     name=system_update["name"],
///     targets=[{
///         "key": "tag:Role",
///         "values": [
///             "WebServer",
///             "Database",
///         ],
///     }],
///     parameters={
///         "restartServices": "true",
///     },
///     schedule_expression="cron(0 3 ? * SUN *)")
/// # EC2 Instance 1 - Web Server with "ServerType" tag
/// web_server = aws.ec2.Instance("web_server",
///     ami=amazon_linux["id"],
///     instance_type=aws.ec2.InstanceType.T3_MICRO,
///     subnet_id=default["id"],
///     vpc_security_group_ids=[ec2_sg["id"]],
///     iam_instance_profile=ec2_ssm_profile["name"],
///     user_data=std.base64encode(input=f"""#!/bin/bash
/// yum update -y
/// yum install -y amazon-ssm-agent
/// systemctl enable amazon-ssm-agent
/// systemctl start amazon-ssm-agent
///
/// # Install Apache web server
/// yum install -y httpd
/// systemctl enable httpd
/// systemctl start httpd
/// echo \"<h1>Web Server - {prefix}</h1>\" > /var/www/html/index.html
/// """).result,
///     tags={
///         "Name": f"{prefix}-web-server",
///         "ServerType": "WebServer",
///         "Role": "WebServer",
///         "Environment": environment,
///         "Owner": owner,
///     })
/// # EC2 Instance 2 - Database Server with "Role" tag
/// database_server = aws.ec2.Instance("database_server",
///     ami=amazon_linux["id"],
///     instance_type=aws.ec2.InstanceType.T3_MICRO,
///     subnet_id=default["id"],
///     vpc_security_group_ids=[ec2_sg["id"]],
///     iam_instance_profile=ec2_ssm_profile["name"],
///     user_data=std.base64encode(input="""#!/bin/bash
/// yum update -y
/// yum install -y amazon-ssm-agent
/// systemctl enable amazon-ssm-agent
/// systemctl start amazon-ssm-agent
///
/// # Install MySQL
/// yum install -y mysql-server
/// systemctl enable mysqld
/// systemctl start mysqld
/// """).result,
///     tags={
///         "Name": f"{prefix}-database-server",
///         "Role": "Database",
///         "Environment": environment,
///         "Owner": owner,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // SSM Association for Webbased Servers
///     var databaseAssociation = new Aws.Ssm.Association("database_association", new()
///     {
///         Name = systemUpdate.Name,
///         Targets = new[]
///         {
///             new Aws.Ssm.Inputs.AssociationTargetArgs
///             {
///                 Key = "tag:Role",
///                 Values = new[]
///                 {
///                     "WebServer",
///                     "Database",
///                 },
///             },
///         },
///         Parameters =
///         {
///             { "restartServices", "true" },
///         },
///         ScheduleExpression = "cron(0 3 ? * SUN *)",
///     });
///
///     // EC2 Instance 1 - Web Server with "ServerType" tag
///     var webServer = new Aws.Ec2.Instance("web_server", new()
///     {
///         Ami = amazonLinux.Id,
///         InstanceType = Aws.Ec2.InstanceType.T3_Micro,
///         SubnetId = @default.Id,
///         VpcSecurityGroupIds = new[]
///         {
///             ec2Sg.Id,
///         },
///         IamInstanceProfile = ec2SsmProfile.Name,
///         UserData = Std.Base64encode.Invoke(new()
///         {
///             Input = @$"#!/bin/bash
/// yum update -y
/// yum install -y amazon-ssm-agent
/// systemctl enable amazon-ssm-agent
/// systemctl start amazon-ssm-agent
///
/// # Install Apache web server
/// yum install -y httpd
/// systemctl enable httpd
/// systemctl start httpd
/// echo \""<h1>Web Server - {prefix}</h1>\"" > /var/www/html/index.html
/// ",
///         }).Apply(invoke => invoke.Result),
///         Tags =
///         {
///             { "Name", $"{prefix}-web-server" },
///             { "ServerType", "WebServer" },
///             { "Role", "WebServer" },
///             { "Environment", environment },
///             { "Owner", owner },
///         },
///     });
///
///     // EC2 Instance 2 - Database Server with "Role" tag
///     var databaseServer = new Aws.Ec2.Instance("database_server", new()
///     {
///         Ami = amazonLinux.Id,
///         InstanceType = Aws.Ec2.InstanceType.T3_Micro,
///         SubnetId = @default.Id,
///         VpcSecurityGroupIds = new[]
///         {
///             ec2Sg.Id,
///         },
///         IamInstanceProfile = ec2SsmProfile.Name,
///         UserData = Std.Base64encode.Invoke(new()
///         {
///             Input = @"#!/bin/bash
/// yum update -y
/// yum install -y amazon-ssm-agent
/// systemctl enable amazon-ssm-agent
/// systemctl start amazon-ssm-agent
///
/// # Install MySQL
/// yum install -y mysql-server
/// systemctl enable mysqld
/// systemctl start mysqld
/// ",
///         }).Apply(invoke => invoke.Result),
///         Tags =
///         {
///             { "Name", $"{prefix}-database-server" },
///             { "Role", "Database" },
///             { "Environment", environment },
///             { "Owner", owner },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// SSM Association for Webbased Servers
/// 		_, err := ssm.NewAssociation(ctx, "database_association", &ssm.AssociationArgs{
/// 			Name: pulumi.Any(systemUpdate.Name),
/// 			Targets: ssm.AssociationTargetArray{
/// 				&ssm.AssociationTargetArgs{
/// 					Key: pulumi.String("tag:Role"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("WebServer"),
/// 						pulumi.String("Database"),
/// 					},
/// 				},
/// 			},
/// 			Parameters: pulumi.StringMap{
/// 				"restartServices": pulumi.String("true"),
/// 			},
/// 			ScheduleExpression: pulumi.String("cron(0 3 ? * SUN *)"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: fmt.Sprintf(`#!/bin/bash
/// yum update -y
/// yum install -y amazon-ssm-agent
/// systemctl enable amazon-ssm-agent
/// systemctl start amazon-ssm-agent
///
/// # Install Apache web server
/// yum install -y httpd
/// systemctl enable httpd
/// systemctl start httpd
/// echo \"<h1>Web Server - %v</h1>\" > /var/www/html/index.html
/// `, prefix),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// EC2 Instance 1 - Web Server with "ServerType" tag
/// 		_, err = ec2.NewInstance(ctx, "web_server", &ec2.InstanceArgs{
/// 			Ami:          pulumi.Any(amazonLinux.Id),
/// 			InstanceType: pulumi.String(ec2.InstanceType_T3_Micro),
/// 			SubnetId:     pulumi.Any(_default.Id),
/// 			VpcSecurityGroupIds: pulumi.StringArray{
/// 				ec2Sg.Id,
/// 			},
/// 			IamInstanceProfile: pulumi.Any(ec2SsmProfile.Name),
/// 			UserData:           pulumi.String(invokeBase64encode.Result),
/// 			Tags: pulumi.StringMap{
/// 				"Name":        pulumi.Sprintf("%v-web-server", prefix),
/// 				"ServerType":  pulumi.String("WebServer"),
/// 				"Role":        pulumi.String("WebServer"),
/// 				"Environment": pulumi.Any(environment),
/// 				"Owner":       pulumi.Any(owner),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBase64encode1, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: `#!/bin/bash
/// yum update -y
/// yum install -y amazon-ssm-agent
/// systemctl enable amazon-ssm-agent
/// systemctl start amazon-ssm-agent
///
/// # Install MySQL
/// yum install -y mysql-server
/// systemctl enable mysqld
/// systemctl start mysqld
/// `,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// EC2 Instance 2 - Database Server with "Role" tag
/// 		_, err = ec2.NewInstance(ctx, "database_server", &ec2.InstanceArgs{
/// 			Ami:          pulumi.Any(amazonLinux.Id),
/// 			InstanceType: pulumi.String(ec2.InstanceType_T3_Micro),
/// 			SubnetId:     pulumi.Any(_default.Id),
/// 			VpcSecurityGroupIds: pulumi.StringArray{
/// 				ec2Sg.Id,
/// 			},
/// 			IamInstanceProfile: pulumi.Any(ec2SsmProfile.Name),
/// 			UserData:           pulumi.String(invokeBase64encode1.Result),
/// 			Tags: pulumi.StringMap{
/// 				"Name":        pulumi.Sprintf("%v-database-server", prefix),
/// 				"Role":        pulumi.String("Database"),
/// 				"Environment": pulumi.Any(environment),
/// 				"Owner":       pulumi.Any(owner),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssm.Association;
/// import com.pulumi.aws.ssm.AssociationArgs;
/// import com.pulumi.aws.ssm.inputs.AssociationTargetArgs;
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.ec2.InstanceArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64encodeArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         // SSM Association for Webbased Servers
///         var databaseAssociation = new Association("databaseAssociation", AssociationArgs.builder()
///             .name(systemUpdate.name())
///             .targets(AssociationTargetArgs.builder()
///                 .key("tag:Role")
///                 .values(
///                     "WebServer",
///                     "Database")
///                 .build())
///             .parameters(Map.of("restartServices", "true"))
///             .scheduleExpression("cron(0 3 ? * SUN *)")
///             .build());
///
///         // EC2 Instance 1 - Web Server with "ServerType" tag
///         var webServer = new Instance("webServer", InstanceArgs.builder()
///             .ami(amazonLinux.id())
///             .instanceType("t3.micro")
///             .subnetId(default_.id())
///             .vpcSecurityGroupIds(ec2Sg.id())
///             .iamInstanceProfile(ec2SsmProfile.name())
///             .userData(StdFunctions.base64encode(Base64encodeArgs.builder()
///                 .input("""
/// #!/bin/bash
/// yum update -y
/// yum install -y amazon-ssm-agent
/// systemctl enable amazon-ssm-agent
/// systemctl start amazon-ssm-agent
///
/// # Install Apache web server
/// yum install -y httpd
/// systemctl enable httpd
/// systemctl start httpd
/// echo \"<h1>Web Server - %s</h1>\" > /var/www/html/index.html
/// ", prefix))
///                 .build()).result())
///             .tags(Map.ofEntries(
///                 Map.entry("Name", String.format("%s-web-server", prefix)),
///                 Map.entry("ServerType", "WebServer"),
///                 Map.entry("Role", "WebServer"),
///                 Map.entry("Environment", environment),
///                 Map.entry("Owner", owner)
///             ))
///             .build());
///
///         // EC2 Instance 2 - Database Server with "Role" tag
///         var databaseServer = new Instance("databaseServer", InstanceArgs.builder()
///             .ami(amazonLinux.id())
///             .instanceType("t3.micro")
///             .subnetId(default_.id())
///             .vpcSecurityGroupIds(ec2Sg.id())
///             .iamInstanceProfile(ec2SsmProfile.name())
///             .userData(StdFunctions.base64encode(Base64encodeArgs.builder()
///                 .input("""
/// #!/bin/bash
/// yum update -y
/// yum install -y amazon-ssm-agent
/// systemctl enable amazon-ssm-agent
/// systemctl start amazon-ssm-agent
///
/// # Install MySQL
/// yum install -y mysql-server
/// systemctl enable mysqld
/// systemctl start mysqld
///                 """)
///                 .build()).result())
///             .tags(Map.ofEntries(
///                 Map.entry("Name", String.format("%s-database-server", prefix)),
///                 Map.entry("Role", "Database"),
///                 Map.entry("Environment", environment),
///                 Map.entry("Owner", owner)
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # SSM Association for Webbased Servers
///   databaseAssociation:
///     type: aws:ssm:Association
///     name: database_association
///     properties:
///       name: ${systemUpdate.name}
///       targets:
///         - key: tag:Role
///           values:
///             - WebServer
///             - Database
///       parameters:
///         restartServices: 'true'
///       scheduleExpression: cron(0 3 ? * SUN *)
///   # EC2 Instance 1 - Web Server with "ServerType" tag
///   webServer:
///     type: aws:ec2:Instance
///     name: web_server
///     properties:
///       ami: ${amazonLinux.id}
///       instanceType: t3.micro
///       subnetId: ${default.id}
///       vpcSecurityGroupIds:
///         - ${ec2Sg.id}
///       iamInstanceProfile: ${ec2SsmProfile.name}
///       userData:
///         fn::invoke:
///           function: std:base64encode
///           arguments:
///             input: "#!/bin/bash\nyum update -y\nyum install -y amazon-ssm-agent\nsystemctl enable amazon-ssm-agent\nsystemctl start amazon-ssm-agent\n    \n# Install Apache web server\nyum install -y httpd\nsystemctl enable httpd\nsystemctl start httpd\necho \\\"<h1>Web Server - ${prefix}</h1>\\\" > /var/www/html/index.html\n"
///           return: result
///       tags:
///         Name: ${prefix}-web-server
///         ServerType: WebServer
///         Role: WebServer
///         Environment: ${environment}
///         Owner: ${owner}
///   # EC2 Instance 2 - Database Server with "Role" tag
///   databaseServer:
///     type: aws:ec2:Instance
///     name: database_server
///     properties:
///       ami: ${amazonLinux.id}
///       instanceType: t3.micro
///       subnetId: ${default.id}
///       vpcSecurityGroupIds:
///         - ${ec2Sg.id}
///       iamInstanceProfile: ${ec2SsmProfile.name}
///       userData:
///         fn::invoke:
///           function: std:base64encode
///           arguments:
///             input: "#!/bin/bash\nyum update -y\nyum install -y amazon-ssm-agent\nsystemctl enable amazon-ssm-agent\nsystemctl start amazon-ssm-agent\n    \n# Install MySQL\nyum install -y mysql-server\nsystemctl enable mysqld\nsystemctl start mysqld\n"
///           return: result
///       tags:
///         Name: ${prefix}-database-server
///         Role: Database
///         Environment: ${environment}
///         Owner: ${owner}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `association_id` - (String) ID of the SSM association.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SSM associations using the `association_id`. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/association:Association example 10abcdef-0abc-1234-5678-90abcdef123456
/// ```
class Association extends pulumi.CustomResource {
  /// By default, when you create a new or update associations, the system runs it immediately and then according to the schedule you specified. Enable this option if you do not want an association to run immediately after you create or update it. This parameter is not supported for rate expressions. Default: `false`.
  late final pulumi.Output<bool?> applyOnlyAtCronInterval;
  /// The ARN of the SSM association
  late final pulumi.Output<String> arn;
  /// The ID of the SSM association.
  late final pulumi.Output<String> associationId;
  /// The descriptive name for the association.
  late final pulumi.Output<String?> associationName;
  /// Specify the target for the association. This target is required for associations that use an `Automation` document and target resources by using rate controls. This should be set to the SSM document `parameter` that will define how your automation will branch out.
  late final pulumi.Output<String?> automationTargetParameterName;
  /// One or more Systems Manager Change Calendar names. The association runs only when the Change Calendar is open.
  late final pulumi.Output<List<String>?> calendarNames;
  /// The compliance severity for the association. Can be one of the following: `UNSPECIFIED`, `LOW`, `MEDIUM`, `HIGH` or `CRITICAL`
  late final pulumi.Output<String?> complianceSeverity;
  /// The document version you want to associate with the target(s). Can be a specific version or the default version.
  late final pulumi.Output<String> documentVersion;
  /// The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%.
  late final pulumi.Output<String?> maxConcurrency;
  /// The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify a number, for example 10, or a percentage of the target set, for example 10%. If you specify a threshold of 3, the stop command is sent when the fourth error is returned. If you specify a threshold of 10% for 50 associations, the stop command is sent when the sixth error is returned.
  late final pulumi.Output<String?> maxErrors;
  /// The name of the SSM document to apply.
  late final pulumi.Output<String> name;
  /// An output location block. Output Location is documented below.
  late final pulumi.Output<AssociationOutputLocation?> outputLocation;
  /// A block of arbitrary string parameters to pass to the SSM document.
  late final pulumi.Output<Map<String, String>> parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A [cron or rate expression](https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html) that specifies when the association runs.
  late final pulumi.Output<String?> scheduleExpression;
  /// The mode for generating association compliance. You can specify `AUTO` or `MANUAL`.
  late final pulumi.Output<String?> syncCompliance;
  /// A map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// A block containing the targets of the SSM association. Targets are documented below. AWS currently supports a maximum of 5 targets.
  late final pulumi.Output<List<AssociationTarget>> targets;
  /// The number of seconds to wait for the association status to be `Success`. If `Success` status is not reached within the given time, create opration will fail.
  ///
  /// Output Location (`output_location`) is an S3 bucket where you want to store the results of this association:
  late final pulumi.Output<int?> waitForSuccessTimeoutSeconds;

  /// Creates a new [Association].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Association]. {@macro pulumi_ssm_association_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Association(
    String name, {
    AssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/association:Association',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applyOnlyAtCronInterval = registerOutput<bool?>('applyOnlyAtCronInterval');
    this.arn = registerOutput<String>('arn');
    this.associationId = registerOutput<String>('associationId');
    this.associationName = registerOutput<String?>('associationName');
    this.automationTargetParameterName = registerOutput<String?>('automationTargetParameterName');
    this.calendarNames = registerOutput<List<String>?>('calendarNames');
    this.complianceSeverity = registerOutput<String?>('complianceSeverity');
    this.documentVersion = registerOutput<String>('documentVersion');
    this.maxConcurrency = registerOutput<String?>('maxConcurrency');
    this.maxErrors = registerOutput<String?>('maxErrors');
    this.name = registerOutput<String>('name');
    this.outputLocation = registerOutput<AssociationOutputLocation?>('outputLocation');
    this.parameters = registerOutput<Map<String, String>>('parameters');
    this.region = registerOutput<String>('region');
    this.scheduleExpression = registerOutput<String?>('scheduleExpression');
    this.syncCompliance = registerOutput<String?>('syncCompliance');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targets = registerOutput<List<AssociationTarget>>('targets');
    this.waitForSuccessTimeoutSeconds = registerOutput<int?>('waitForSuccessTimeoutSeconds');
  }
}

import 'package:pulumi/pulumi.dart';
import '../event_permission_condition/event_permission_condition.dart';
import 'event_permission_args.dart';

/// Provides a resource to create an EventBridge permission to support cross-account events in the current account default event bus.
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// > **Note:** The EventBridge bus policy resource  (<span pulumi-lang-nodejs="`aws.cloudwatch.EventBusPolicy`" pulumi-lang-dotnet="`aws.cloudwatch.EventBusPolicy`" pulumi-lang-go="`cloudwatch.EventBusPolicy`" pulumi-lang-python="`cloudwatch.EventBusPolicy`" pulumi-lang-yaml="`aws.cloudwatch.EventBusPolicy`" pulumi-lang-java="`aws.cloudwatch.EventBusPolicy`">`aws.cloudwatch.EventBusPolicy`</span>) is incompatible with the EventBridge permission resource (<span pulumi-lang-nodejs="`aws.cloudwatch.EventPermission`" pulumi-lang-dotnet="`aws.cloudwatch.EventPermission`" pulumi-lang-go="`cloudwatch.EventPermission`" pulumi-lang-python="`cloudwatch.EventPermission`" pulumi-lang-yaml="`aws.cloudwatch.EventPermission`" pulumi-lang-java="`aws.cloudwatch.EventPermission`">`aws.cloudwatch.EventPermission`</span>) and will overwrite permissions.
///
/// ## Example Usage
///
/// ### Account Access
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const devAccountAccess = new aws.cloudwatch.EventPermission("DevAccountAccess", {
/// principal: "123456789012",
/// statementId: "DevAccountAccess",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// dev_account_access = aws.cloudwatch.EventPermission("DevAccountAccess",
/// principal="123456789012",
/// statement_id="DevAccountAccess")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var devAccountAccess = new Aws.CloudWatch.EventPermission("DevAccountAccess", new()
/// {
/// Principal = "123456789012",
/// StatementId = "DevAccountAccess",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudwatch.NewEventPermission(ctx, "DevAccountAccess", &cloudwatch.EventPermissionArgs{
/// Principal:   pulumi.String("123456789012"),
/// StatementId: pulumi.String("DevAccountAccess"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.EventPermission;
/// import com.pulumi.aws.cloudwatch.EventPermissionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var devAccountAccess = new EventPermission("devAccountAccess", EventPermissionArgs.builder()
/// .principal("123456789012")
/// .statementId("DevAccountAccess")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// devAccountAccess:
/// type: aws:cloudwatch:EventPermission
/// name: DevAccountAccess
/// properties:
/// principal: '123456789012'
/// statementId: DevAccountAccess
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Organization Access
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const organizationAccess = new aws.cloudwatch.EventPermission("OrganizationAccess", {
/// principal: "*",
/// statementId: "OrganizationAccess",
/// condition: {
/// key: "aws:PrincipalOrgID",
/// type: "StringEquals",
/// value: example.id,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// organization_access = aws.cloudwatch.EventPermission("OrganizationAccess",
/// principal="*",
/// statement_id="OrganizationAccess",
/// condition={
/// "key": "aws:PrincipalOrgID",
/// "type": "StringEquals",
/// "value": example["id"],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var organizationAccess = new Aws.CloudWatch.EventPermission("OrganizationAccess", new()
/// {
/// Principal = "*",
/// StatementId = "OrganizationAccess",
/// Condition = new Aws.CloudWatch.Inputs.EventPermissionConditionArgs
/// {
/// Key = "aws:PrincipalOrgID",
/// Type = "StringEquals",
/// Value = example.Id,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudwatch.NewEventPermission(ctx, "OrganizationAccess", &cloudwatch.EventPermissionArgs{
/// Principal:   pulumi.String("*"),
/// StatementId: pulumi.String("OrganizationAccess"),
/// Condition: &cloudwatch.EventPermissionConditionArgs{
/// Key:   pulumi.String("aws:PrincipalOrgID"),
/// Type:  pulumi.String("StringEquals"),
/// Value: pulumi.Any(example.Id),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.EventPermission;
/// import com.pulumi.aws.cloudwatch.EventPermissionArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventPermissionConditionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var organizationAccess = new EventPermission("organizationAccess", EventPermissionArgs.builder()
/// .principal("*")
/// .statementId("OrganizationAccess")
/// .condition(EventPermissionConditionArgs.builder()
/// .key("aws:PrincipalOrgID")
/// .type("StringEquals")
/// .value(example.id())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// organizationAccess:
/// type: aws:cloudwatch:EventPermission
/// name: OrganizationAccess
/// properties:
/// principal: '*'
/// statementId: OrganizationAccess
/// condition:
/// key: aws:PrincipalOrgID
/// type: StringEquals
/// value: ${example.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import EventBridge permissions using the `event_bus_name/statement_id` (if you omit <span pulumi-lang-nodejs="`eventBusName`" pulumi-lang-dotnet="`EventBusName`" pulumi-lang-go="`eventBusName`" pulumi-lang-python="`event_bus_name`" pulumi-lang-yaml="`eventBusName`" pulumi-lang-java="`eventBusName`">`event_bus_name`</span>, the <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span> event bus will be used). For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/eventPermission:EventPermission DevAccountAccess example-event-bus/DevAccountAccess
/// ```
class EventPermission extends CustomResource {
  /// The action that you are enabling the other account to perform. Defaults to `events:PutEvents`.
  late final Output<String?> action;

  /// Configuration block to limit the event bus permissions you are granting to only accounts that fulfill the condition. Specified below.
  late final Output<EventPermissionCondition?> condition;

  /// The name of the event bus to set the permissions on.
  /// If you omit this, the permissions are set on the <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span> event bus.
  late final Output<String?> eventBusName;

  /// The 12-digit AWS account ID that you are permitting to put events to your default event bus. Specify `*` to permit any account to put events to your default event bus, optionally limited by <span pulumi-lang-nodejs="`condition`" pulumi-lang-dotnet="`Condition`" pulumi-lang-go="`condition`" pulumi-lang-python="`condition`" pulumi-lang-yaml="`condition`" pulumi-lang-java="`condition`">`condition`</span>.
  late final Output<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// An identifier string for the external account that you are granting permissions to.
  late final Output<String> statementId;

  EventPermission(
    String name, {
    EventPermissionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventPermission:EventPermission',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.action = registerOutput<String?>('action');
    this.condition = registerOutput<EventPermissionCondition?>('condition');
    this.eventBusName = registerOutput<String?>('eventBusName');
    this.principal = registerOutput<String>('principal');
    this.region = registerOutput<String>('region');
    this.statementId = registerOutput<String>('statementId');
  }
}

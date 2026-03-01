import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_permission_args.dart';
import 'event_permission_condition.dart';
import 'event_permission_state.dart';

/// Provides a resource to create an EventBridge permission to support cross-account events in the current account default event bus.
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// > **Note:** The EventBridge bus policy resource  (`aws.cloudwatch.EventBusPolicy`) is incompatible with the EventBridge permission resource (`aws.cloudwatch.EventPermission`) and will overwrite permissions.
///
/// ## Example Usage
///
/// ### Account Access
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const devAccountAccess = new aws.cloudwatch.EventPermission("DevAccountAccess", {
///     principal: "123456789012",
///     statementId: "DevAccountAccess",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// dev_account_access = aws.cloudwatch.EventPermission("DevAccountAccess",
///     principal="123456789012",
///     statement_id="DevAccountAccess")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var devAccountAccess = new Aws.CloudWatch.EventPermission("DevAccountAccess", new()
///     {
///         Principal = "123456789012",
///         StatementId = "DevAccountAccess",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewEventPermission(ctx, "DevAccountAccess", &cloudwatch.EventPermissionArgs{
/// 			Principal:   pulumi.String("123456789012"),
/// 			StatementId: pulumi.String("DevAccountAccess"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var devAccountAccess = new EventPermission("devAccountAccess", EventPermissionArgs.builder()
///             .principal("123456789012")
///             .statementId("DevAccountAccess")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   devAccountAccess:
///     type: aws:cloudwatch:EventPermission
///     name: DevAccountAccess
///     properties:
///       principal: '123456789012'
///       statementId: DevAccountAccess
/// ```
///
///
/// ### Organization Access
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const organizationAccess = new aws.cloudwatch.EventPermission("OrganizationAccess", {
///     principal: "*",
///     statementId: "OrganizationAccess",
///     condition: {
///         key: "aws:PrincipalOrgID",
///         type: "StringEquals",
///         value: example.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// organization_access = aws.cloudwatch.EventPermission("OrganizationAccess",
///     principal="*",
///     statement_id="OrganizationAccess",
///     condition={
///         "key": "aws:PrincipalOrgID",
///         "type": "StringEquals",
///         "value": example["id"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var organizationAccess = new Aws.CloudWatch.EventPermission("OrganizationAccess", new()
///     {
///         Principal = "*",
///         StatementId = "OrganizationAccess",
///         Condition = new Aws.CloudWatch.Inputs.EventPermissionConditionArgs
///         {
///             Key = "aws:PrincipalOrgID",
///             Type = "StringEquals",
///             Value = example.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewEventPermission(ctx, "OrganizationAccess", &cloudwatch.EventPermissionArgs{
/// 			Principal:   pulumi.String("*"),
/// 			StatementId: pulumi.String("OrganizationAccess"),
/// 			Condition: &cloudwatch.EventPermissionConditionArgs{
/// 				Key:   pulumi.String("aws:PrincipalOrgID"),
/// 				Type:  pulumi.String("StringEquals"),
/// 				Value: pulumi.Any(example.Id),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var organizationAccess = new EventPermission("organizationAccess", EventPermissionArgs.builder()
///             .principal("*")
///             .statementId("OrganizationAccess")
///             .condition(EventPermissionConditionArgs.builder()
///                 .key("aws:PrincipalOrgID")
///                 .type("StringEquals")
///                 .value(example.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   organizationAccess:
///     type: aws:cloudwatch:EventPermission
///     name: OrganizationAccess
///     properties:
///       principal: '*'
///       statementId: OrganizationAccess
///       condition:
///         key: aws:PrincipalOrgID
///         type: StringEquals
///         value: ${example.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EventBridge permissions using the `event_bus_name/statement_id` (if you omit `event_bus_name`, the `default` event bus will be used). For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/eventPermission:EventPermission DevAccountAccess example-event-bus/DevAccountAccess
/// ```
class EventPermission extends pulumi.CustomResource {
  /// The action that you are enabling the other account to perform. Defaults to `events:PutEvents`.
  late final pulumi.Output<String?> action;
  /// Configuration block to limit the event bus permissions you are granting to only accounts that fulfill the condition. Specified below.
  late final pulumi.Output<EventPermissionCondition?> condition;
  /// The name of the event bus to set the permissions on.
  /// If you omit this, the permissions are set on the `default` event bus.
  late final pulumi.Output<String?> eventBusName;
  /// The 12-digit AWS account ID that you are permitting to put events to your default event bus. Specify `*` to permit any account to put events to your default event bus, optionally limited by `condition`.
  late final pulumi.Output<String> principal;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// An identifier string for the external account that you are granting permissions to.
  late final pulumi.Output<String> statementId;

  /// Creates a new [EventPermission].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventPermission]. {@macro pulumi_cloudwatch_event_permission_event_permission_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventPermission(
    String name, {
    EventPermissionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventPermission:EventPermission',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String?>('action');
    this.condition = registerOutput<EventPermissionCondition?>('condition');
    this.eventBusName = registerOutput<String?>('eventBusName');
    this.principal = registerOutput<String>('principal');
    this.region = registerOutput<String>('region');
    this.statementId = registerOutput<String>('statementId');
  }

  /// Gets an existing [EventPermission] resource's state with the given [name] and [id].
  static EventPermission get(
    String name,
    pulumi.Input<String> id, {
    EventPermissionState? state,
  }) {
    return EventPermission._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EventPermission._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventPermission:EventPermission',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String?>('action');
    this.condition = registerOutput<EventPermissionCondition?>('condition');
    this.eventBusName = registerOutput<String?>('eventBusName');
    this.principal = registerOutput<String>('principal');
    this.region = registerOutput<String>('region');
    this.statementId = registerOutput<String>('statementId');
  }
}

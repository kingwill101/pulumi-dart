import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_permission_args.dart';
import 'event_permission_condition.dart';
import 'event_permission_state.dart';

/// Provides a resource to create an EventBridge permission to support cross-account events in the current account default event bus.
///
/// &gt; **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// &gt; **Note:** The EventBridge bus policy resource  (`aws.cloudwatch.EventBusPolicy`) is incompatible with the EventBridge permission resource (`aws.cloudwatch.EventPermission`) and will overwrite permissions.
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cloudwatch_eventpermission" "DevAccountAccess" {
///   principal    = "123456789012"
///   statement_id = "DevAccountAccess"
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
///     condition: {
///         key: "aws:PrincipalOrgID",
///         type: "StringEquals",
///         value: example.id,
///     },
///     principal: "*",
///     statementId: "OrganizationAccess",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// organization_access = aws.cloudwatch.EventPermission("OrganizationAccess",
///     condition={
///         "key": "aws:PrincipalOrgID",
///         "type": "StringEquals",
///         "value": example["id"],
///     },
///     principal="*",
///     statement_id="OrganizationAccess")
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
///         Condition = new Aws.CloudWatch.Inputs.EventPermissionConditionArgs
///         {
///             Key = "aws:PrincipalOrgID",
///             Type = "StringEquals",
///             Value = example.Id,
///         },
///         Principal = "*",
///         StatementId = "OrganizationAccess",
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
/// 			Condition: &cloudwatch.EventPermissionConditionArgs{
/// 				Key:   pulumi.String("aws:PrincipalOrgID"),
/// 				Type:  pulumi.String("StringEquals"),
/// 				Value: pulumi.Any(example.Id),
/// 			},
/// 			Principal:   pulumi.String("*"),
/// 			StatementId: pulumi.String("OrganizationAccess"),
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
/// resource "aws_cloudwatch_eventpermission" "OrganizationAccess" {
///   condition = {
///     key   = "aws:PrincipalOrgID"
///     type  = "StringEquals"
///     value = example.id
///   }
///   principal    = "*"
///   statement_id = "OrganizationAccess"
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
///         var organizationAccess = new EventPermission("organizationAccess", EventPermissionArgs.builder()
///             .condition(EventPermissionConditionArgs.builder()
///                 .key("aws:PrincipalOrgID")
///                 .type("StringEquals")
///                 .value(example.id())
///                 .build())
///             .principal("*")
///             .statementId("OrganizationAccess")
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
///       condition:
///         key: aws:PrincipalOrgID
///         type: StringEquals
///         value: ${example.id}
///       principal: '*'
///       statementId: OrganizationAccess
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `statementId` (String) Statement ID of the EventBridge permission.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Permissions `eventBusName` and `statementId` separated by a forward slash (`/`) (if you omit `eventBusName`, the `default` event bus will be used). For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/eventPermission:EventPermission example example-event-bus/DevAccountAccess
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    action = registerOutput<String?>('action');
    condition = registerOutput<EventPermissionCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventPermissionCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eventBusName = registerOutput<String?>('eventBusName');
    principal = registerOutput<String>('principal');
    region = registerOutput<String>('region');
    statementId = registerOutput<String>('statementId');
  }

  /// Gets an existing [EventPermission] resource's state with the given [name] and [id].
  static EventPermission get(
    String name,
    pulumi.Input<String> id, {
    EventPermissionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EventPermission._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    action = registerOutput<String?>('action');
    condition = registerOutput<EventPermissionCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventPermissionCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eventBusName = registerOutput<String?>('eventBusName');
    principal = registerOutput<String>('principal');
    region = registerOutput<String>('region');
    statementId = registerOutput<String>('statementId');
  }

  /// Creates a typed reference to an existing [EventPermission] resource.
  EventPermission.reference(String urn)
    : super(
        'aws:cloudwatch/eventPermission:EventPermission',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    action = registerOutput<String?>('action');
    condition = registerOutput<EventPermissionCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventPermissionCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eventBusName = registerOutput<String?>('eventBusName');
    principal = registerOutput<String>('principal');
    region = registerOutput<String>('region');
    statementId = registerOutput<String>('statementId');
  }
}

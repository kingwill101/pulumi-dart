import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_review_recurrence_range_response.dart';
import 'scope_access_review_history_definition_by_id_args.dart';

/// Access Review History Definition.
///
/// Uses Azure REST API version 2021-12-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-12-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutAccessReviewHistoryDefinition
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scopeAccessReviewHistoryDefinitionById = new AzureNative.Authorization.ScopeAccessReviewHistoryDefinitionById("scopeAccessReviewHistoryDefinitionById", new()
///     {
///         HistoryDefinitionId = "44724910-d7a5-4c29-b28f-db73e717165a",
///         Scope = "subscriptions/129a304b-4aea-4b86-a9f7-ba7e2b23737a",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	authorization "github.com/pulumi/pulumi-azure-native-sdk/authorization/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := authorization.NewScopeAccessReviewHistoryDefinitionById(ctx, "scopeAccessReviewHistoryDefinitionById", &authorization.ScopeAccessReviewHistoryDefinitionByIdArgs{
/// 			HistoryDefinitionId: pulumi.String("44724910-d7a5-4c29-b28f-db73e717165a"),
/// 			Scope:               pulumi.String("subscriptions/129a304b-4aea-4b86-a9f7-ba7e2b23737a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.authorization.ScopeAccessReviewHistoryDefinitionById;
/// import com.pulumi.azurenative.authorization.ScopeAccessReviewHistoryDefinitionByIdArgs;
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
///         var scopeAccessReviewHistoryDefinitionById = new ScopeAccessReviewHistoryDefinitionById("scopeAccessReviewHistoryDefinitionById", ScopeAccessReviewHistoryDefinitionByIdArgs.builder()
///             .historyDefinitionId("44724910-d7a5-4c29-b28f-db73e717165a")
///             .scope("subscriptions/129a304b-4aea-4b86-a9f7-ba7e2b23737a")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const scopeAccessReviewHistoryDefinitionById = new azure_native.authorization.ScopeAccessReviewHistoryDefinitionById("scopeAccessReviewHistoryDefinitionById", {
///     historyDefinitionId: "44724910-d7a5-4c29-b28f-db73e717165a",
///     scope: "subscriptions/129a304b-4aea-4b86-a9f7-ba7e2b23737a",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// scope_access_review_history_definition_by_id = azure_native.authorization.ScopeAccessReviewHistoryDefinitionById("scopeAccessReviewHistoryDefinitionById",
///     history_definition_id="44724910-d7a5-4c29-b28f-db73e717165a",
///     scope="subscriptions/129a304b-4aea-4b86-a9f7-ba7e2b23737a")
///
/// ```
///
/// ```yaml
/// resources:
///   scopeAccessReviewHistoryDefinitionById:
///     type: azure-native:authorization:ScopeAccessReviewHistoryDefinitionById
///     properties:
///       historyDefinitionId: 44724910-d7a5-4c29-b28f-db73e717165a
///       scope: subscriptions/129a304b-4aea-4b86-a9f7-ba7e2b23737a
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:authorization:ScopeAccessReviewHistoryDefinitionById 44724910-d7a5-4c29-b28f-db73e717165a /{scope}/providers/Microsoft.Authorization/accessReviewHistoryDefinitions/{historyDefinitionId}
/// ```
class ScopeAccessReviewHistoryDefinitionById extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Date time when history definition was created
  late final pulumi.Output<String> createdDateTime;

  /// Collection of review decisions which the history data should be filtered on. For example if Approve and Deny are supplied the data will only contain review results in which the decision maker approved or denied a review request.
  late final pulumi.Output<List<String>?> decisions;

  /// The display name for the history definition.
  late final pulumi.Output<String?> displayName;

  /// Set of access review history instances for this history definition.
  late final pulumi.Output<List<Map<String, dynamic>>?> instances;

  /// The interval for recurrence. For a quarterly review, the interval is 3 for type : absoluteMonthly.
  late final pulumi.Output<int?> interval;

  /// The access review history definition unique id.
  late final pulumi.Output<String> name;

  /// The identity id
  late final pulumi.Output<String> principalId;

  /// The identity display name
  late final pulumi.Output<String> principalName;

  /// The identity type : user/servicePrincipal
  late final pulumi.Output<String> principalType;

  /// Access Review History Definition recurrence settings.
  late final pulumi.Output<AccessReviewRecurrenceRangeResponse?> range;

  /// Date time used when selecting review data, all reviews included in data end on or before this date. For use only with one-time/non-recurring reports.
  late final pulumi.Output<String> reviewHistoryPeriodEndDateTime;

  /// Date time used when selecting review data, all reviews included in data start on or after this date. For use only with one-time/non-recurring reports.
  late final pulumi.Output<String> reviewHistoryPeriodStartDateTime;

  /// A collection of scopes used when selecting review history data
  late final pulumi.Output<List<Map<String, dynamic>>?> scopes;

  /// This read-only field specifies the of the requested review history data. This is either requested, in-progress, done or error.
  late final pulumi.Output<String> status;

  /// The resource type.
  late final pulumi.Output<String> type;

  /// The user principal name(if valid)
  late final pulumi.Output<String> userPrincipalName;

  /// Creates a new [ScopeAccessReviewHistoryDefinitionById].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScopeAccessReviewHistoryDefinitionById]. {@macro pulumi_authorization_scope_access_review_history_definition_by_id_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScopeAccessReviewHistoryDefinitionById(
    String name, {
    ScopeAccessReviewHistoryDefinitionByIdArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:authorization:ScopeAccessReviewHistoryDefinitionById',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdDateTime = registerOutput<String>('createdDateTime');
    decisions = registerOutput<List<String>?>('decisions');
    displayName = registerOutput<String?>('displayName');
    instances = registerOutput<List<Map<String, dynamic>>?>('instances');
    interval = registerOutput<int?>('interval');
    this.name = registerOutput<String>('name');
    principalId = registerOutput<String>('principalId');
    principalName = registerOutput<String>('principalName');
    principalType = registerOutput<String>('principalType');
    range = registerOutput<AccessReviewRecurrenceRangeResponse?>('range');
    reviewHistoryPeriodEndDateTime = registerOutput<String>(
      'reviewHistoryPeriodEndDateTime',
    );
    reviewHistoryPeriodStartDateTime = registerOutput<String>(
      'reviewHistoryPeriodStartDateTime',
    );
    scopes = registerOutput<List<Map<String, dynamic>>?>('scopes');
    status = registerOutput<String>('status');
    type = registerOutput<String>('type');
    userPrincipalName = registerOutput<String>('userPrincipalName');
  }
}

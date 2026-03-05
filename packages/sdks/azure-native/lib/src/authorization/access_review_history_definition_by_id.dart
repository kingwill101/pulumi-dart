import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_review_history_definition_by_id_args.dart';
import 'access_review_recurrence_range_response.dart';

/// Access Review History Definition.
///
/// Uses Azure REST API version 2021-12-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-12-01-preview.
///
/// Other available API versions: 2021-11-16-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:authorization:AccessReviewHistoryDefinitionById myresource1 /subscriptions/{subscriptionId}/providers/Microsoft.Authorization/accessReviewHistoryDefinitions/{historyDefinitionId}
/// ```
class AccessReviewHistoryDefinitionById extends pulumi.CustomResource {
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

  /// Creates a new [AccessReviewHistoryDefinitionById].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessReviewHistoryDefinitionById]. {@macro pulumi_authorization_access_review_history_definition_by_id_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessReviewHistoryDefinitionById(
    String name, {
    AccessReviewHistoryDefinitionByIdArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:authorization:AccessReviewHistoryDefinitionById',
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
    range = registerOutput<AccessReviewRecurrenceRangeResponse?>(
      'range',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AccessReviewRecurrenceRangeResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
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

import 'package:pulumi/pulumi.dart';
import 'destination_response3.dart';
import 'matching_criteria_response.dart';
import 'transport_response2.dart';
import 'trigger_args3.dart';

/// Create a new trigger in a particular project and location.
class Trigger4 extends CustomResource {
  /// The creation time.
  late final Output<String> createTime;

  /// Destination specifies where the events should be sent to.
  late final Output<DestinationResponse3> destination;

  /// This checksum is computed by the server based on the value of other fields, and may be sent only on create requests to ensure the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// Optional. User labels attached to the triggers that can be used to group resources.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Unordered list. The criteria by which events are filtered. Only events that match with this criteria will be sent to the destination.
  late final Output<List<MatchingCriteriaResponse>> matchingCriteria;

  /// The resource name of the trigger. Must be unique within the location on the project and must in `projects/{project}/locations/{location}/triggers/{trigger}` format.
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The principal who calls this API must have `iam.serviceAccounts.actAs` permission in the service account. See https://cloud.google.com/iam/docs/understanding-service-accounts?hl=en#sa_common for more information. For Cloud Run destinations, this service account is used to generate identity tokens when invoking the service. See https://cloud.google.com/run/docs/triggering/pubsub-push#create-service-account for information on how to invoke authenticated Cloud Run services. In order to create Audit Log triggers, the service account should also have 'eventarc.events.receiveAuditLogV1Written' permission.
  late final Output<String> serviceAccount;

  /// In order to deliver messages, Eventarc may use other Google Cloud products as transport intermediary. This field contains a reference to that transport intermediary. This information can be used for debugging purposes.
  late final Output<TransportResponse2> transport;

  /// Required. The user-provided ID to be assigned to the trigger.
  late final Output<String> triggerId;

  /// The last-modified time.
  late final Output<String> updateTime;

  Trigger4(
    String name, {
    TriggerArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:eventarc/v1beta1:Trigger',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.destination = Output.createUnknown<DestinationResponse3>();
    this.etag = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.matchingCriteria =
        Output.createUnknown<List<MatchingCriteriaResponse>>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.serviceAccount = Output.createUnknown<String>();
    this.transport = Output.createUnknown<TransportResponse2>();
    this.triggerId = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}

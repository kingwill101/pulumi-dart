import 'package:pulumi/pulumi.dart';
import 'change_args2.dart';
import 'resource_record_set_response2.dart';

/// Atomically updates the ResourceRecordSet collection.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Change2 extends CustomResource {
  /// Which ResourceRecordSets to add?
  late final Output<List<ResourceRecordSetResponse2>> additions;

  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  late final Output<String?> clientOperationId;

  /// Which ResourceRecordSets to remove? Must match existing data exactly.
  late final Output<List<ResourceRecordSetResponse2>> deletions;

  /// If the DNS queries for the zone will be served.
  late final Output<bool> isServing;
  late final Output<String> kind;
  late final Output<String> managedZone;
  late final Output<String> project;

  /// The time that this operation was started by the server (output only). This is in RFC3339 text format.
  late final Output<String> startTime;

  /// Status of the operation (output only). A status of "done" means that the request to update the authoritative servers has been sent, but the servers might not be updated yet.
  late final Output<String> status;

  Change2(
    String name, {
    ChangeArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dns/v1beta2:Change',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.additions = Output.createUnknown<List<ResourceRecordSetResponse2>>();
    this.clientOperationId = Output.createUnknown<String?>();
    this.deletions = Output.createUnknown<List<ResourceRecordSetResponse2>>();
    this.isServing = Output.createUnknown<bool>();
    this.kind = Output.createUnknown<String>();
    this.managedZone = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.startTime = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
  }
}

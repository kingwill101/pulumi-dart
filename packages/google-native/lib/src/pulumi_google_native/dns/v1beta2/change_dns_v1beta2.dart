import 'package:pulumi/pulumi.dart' as pulumi;
import 'change_dns_v1beta2_args.dart';
import 'resource_record_set_response_dns_v1beta2.dart';

/// Atomically updates the ResourceRecordSet collection.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class ChangeDnsV1beta2 extends pulumi.CustomResource {
  /// Which ResourceRecordSets to add?
  late final pulumi.Output<List<ResourceRecordSetResponseDnsV1beta2>> additions;

  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  late final pulumi.Output<String?> clientOperationId;

  /// Which ResourceRecordSets to remove? Must match existing data exactly.
  late final pulumi.Output<List<ResourceRecordSetResponseDnsV1beta2>> deletions;

  /// If the DNS queries for the zone will be served.
  late final pulumi.Output<bool> isServing;
  late final pulumi.Output<String> kind;
  late final pulumi.Output<String> managedZone;
  late final pulumi.Output<String> project;

  /// The time that this operation was started by the server (output only). This is in RFC3339 text format.
  late final pulumi.Output<String> startTime;

  /// Status of the operation (output only). A status of "done" means that the request to update the authoritative servers has been sent, but the servers might not be updated yet.
  late final pulumi.Output<String> status;

  ChangeDnsV1beta2(
    String name, {
    ChangeDnsV1beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dns/v1beta2:Change',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additions =
        registerOutput<List<ResourceRecordSetResponseDnsV1beta2>>('additions');
    this.clientOperationId = registerOutput<String?>('clientOperationId');
    this.deletions =
        registerOutput<List<ResourceRecordSetResponseDnsV1beta2>>('deletions');
    this.isServing = registerOutput<bool>('isServing');
    this.kind = registerOutput<String>('kind');
    this.managedZone = registerOutput<String>('managedZone');
    this.project = registerOutput<String>('project');
    this.startTime = registerOutput<String>('startTime');
    this.status = registerOutput<String>('status');
  }
}

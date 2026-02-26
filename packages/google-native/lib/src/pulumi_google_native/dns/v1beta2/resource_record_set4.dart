import 'package:pulumi/pulumi.dart';
import 'resource_record_set_args2.dart';
import 'rrset_routing_policy_response2.dart';

/// Creates a new ResourceRecordSet.
class ResourceRecordSet4 extends CustomResource {
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  late final Output<String?> clientOperationId;
  late final Output<String> kind;
  late final Output<String> managedZone;

  /// For example, www.example.com.
  late final Output<String> name;
  late final Output<String> project;

  /// Configures dynamic query responses based on either the geo location of the querying user or a weighted round robin based routing policy. A valid ResourceRecordSet contains only rrdata (for static resolution) or a routing_policy (for dynamic resolution).
  late final Output<RRSetRoutingPolicyResponse2> routingPolicy;

  /// As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see examples.
  late final Output<List<String>> rrdatas;

  /// As defined in RFC 4034 (section 3.2).
  late final Output<List<String>> signatureRrdatas;

  /// Number of seconds that this ResourceRecordSet can be cached by resolvers.
  late final Output<int> ttl;

  /// The identifier of a supported record type. See the list of Supported DNS record types.
  late final Output<String> type;

  ResourceRecordSet4(
    String name, {
    ResourceRecordSetArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dns/v1beta2:ResourceRecordSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clientOperationId = Output.createUnknown<String?>();
    this.kind = Output.createUnknown<String>();
    this.managedZone = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.routingPolicy = Output.createUnknown<RRSetRoutingPolicyResponse2>();
    this.rrdatas = Output.createUnknown<List<String>>();
    this.signatureRrdatas = Output.createUnknown<List<String>>();
    this.ttl = Output.createUnknown<int>();
    this.type = Output.createUnknown<String>();
  }
}

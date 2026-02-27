import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_record_set_args.dart';
import 'rrset_routing_policy_response.dart';

/// Creates a new ResourceRecordSet.
class ResourceRecordSetDnsV1 extends pulumi.CustomResource {
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  late final pulumi.Output<String?> clientOperationId;
  late final pulumi.Output<String> kind;
  late final pulumi.Output<String> managedZone;

  /// For example, www.example.com.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Configures dynamic query responses based on either the geo location of the querying user or a weighted round robin based routing policy. A valid ResourceRecordSet contains only rrdata (for static resolution) or a routing_policy (for dynamic resolution).
  late final pulumi.Output<RRSetRoutingPolicyResponse> routingPolicy;

  /// As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see examples.
  late final pulumi.Output<List<String>> rrdatas;

  /// As defined in RFC 4034 (section 3.2).
  late final pulumi.Output<List<String>> signatureRrdatas;

  /// Number of seconds that this ResourceRecordSet can be cached by resolvers.
  late final pulumi.Output<int> ttl;

  /// The identifier of a supported record type. See the list of Supported DNS record types.
  late final pulumi.Output<String> type;

  ResourceRecordSetDnsV1(
    String name, {
    ResourceRecordSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dns/v1:ResourceRecordSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clientOperationId = registerOutput<String?>('clientOperationId');
    this.kind = registerOutput<String>('kind');
    this.managedZone = registerOutput<String>('managedZone');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.routingPolicy =
        registerOutput<RRSetRoutingPolicyResponse>('routingPolicy');
    this.rrdatas = registerOutput<List<String>>('rrdatas');
    this.signatureRrdatas = registerOutput<List<String>>('signatureRrdatas');
    this.ttl = registerOutput<int>('ttl');
    this.type = registerOutput<String>('type');
  }
}

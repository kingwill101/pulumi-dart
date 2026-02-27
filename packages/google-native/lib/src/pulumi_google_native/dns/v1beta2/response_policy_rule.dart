import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_policy_rule_args.dart';
import 'response_policy_rule_local_data_response_dns_v1beta2.dart';

/// Creates a new Response Policy Rule.
/// Auto-naming is currently not supported for this resource.
class ResponsePolicyRule extends pulumi.CustomResource {
  /// Answer this query with a behavior rather than DNS data.
  late final pulumi.Output<String> behavior;

  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  late final pulumi.Output<String?> clientOperationId;

  /// The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.
  late final pulumi.Output<String> dnsName;
  late final pulumi.Output<String> kind;

  /// Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name; in particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed.
  late final pulumi.Output<ResponsePolicyRuleLocalDataResponseDnsV1beta2>
      localData;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> responsePolicy;

  /// An identifier for this rule. Must be unique with the ResponsePolicy.
  late final pulumi.Output<String> ruleName;

  ResponsePolicyRule(
    String name, {
    ResponsePolicyRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dns/v1beta2:ResponsePolicyRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.behavior = registerOutput<String>('behavior');
    this.clientOperationId = registerOutput<String?>('clientOperationId');
    this.dnsName = registerOutput<String>('dnsName');
    this.kind = registerOutput<String>('kind');
    this.localData =
        registerOutput<ResponsePolicyRuleLocalDataResponseDnsV1beta2>(
            'localData');
    this.project = registerOutput<String>('project');
    this.responsePolicy = registerOutput<String>('responsePolicy');
    this.ruleName = registerOutput<String>('ruleName');
  }
}

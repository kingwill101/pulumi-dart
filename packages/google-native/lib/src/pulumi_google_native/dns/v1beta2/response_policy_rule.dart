import 'package:pulumi/pulumi.dart';
import 'response_policy_rule_args.dart';
import 'response_policy_rule_local_data_response2.dart';

/// Creates a new Response Policy Rule.
/// Auto-naming is currently not supported for this resource.
class ResponsePolicyRule extends CustomResource {
  /// Answer this query with a behavior rather than DNS data.
  late final Output<String> behavior;

  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  late final Output<String?> clientOperationId;

  /// The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.
  late final Output<String> dnsName;
  late final Output<String> kind;

  /// Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name; in particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed.
  late final Output<ResponsePolicyRuleLocalDataResponse2> localData;
  late final Output<String> project;
  late final Output<String> responsePolicy;

  /// An identifier for this rule. Must be unique with the ResponsePolicy.
  late final Output<String> ruleName;

  ResponsePolicyRule(
    String name, {
    ResponsePolicyRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dns/v1beta2:ResponsePolicyRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.behavior = registerOutput<String>('behavior');
    this.clientOperationId = registerOutput<String?>('clientOperationId');
    this.dnsName = registerOutput<String>('dnsName');
    this.kind = registerOutput<String>('kind');
    this.localData =
        registerOutput<ResponsePolicyRuleLocalDataResponse2>('localData');
    this.project = registerOutput<String>('project');
    this.responsePolicy = registerOutput<String>('responsePolicy');
    this.ruleName = registerOutput<String>('ruleName');
  }
}

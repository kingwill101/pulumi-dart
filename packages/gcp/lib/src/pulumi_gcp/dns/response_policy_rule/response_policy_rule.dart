import 'package:pulumi/pulumi.dart';
import '../response_policy_rule_local_data/response_policy_rule_local_data.dart';
import 'response_policy_rule_args.dart';

/// A Response Policy Rule is a selector that applies its behavior to queries that match the selector.
/// Selectors are DNS names, which may be wildcards or exact matches.
/// Each DNS query subject to a Response Policy matches at most one ResponsePolicyRule,
/// as identified by the dns_name field with the longest matching suffix.
///
///
///
/// ## Example Usage
///
/// ### Dns Response Policy Rule Basic
///
///
///
///
/// ## Import
///
/// ResponsePolicyRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/responsePolicies/{{response_policy}}/rules/{{rule_name}}`
///
/// * `{{project}}/{{response_policy}}/{{rule_name}}`
///
/// * `{{response_policy}}/{{rule_name}}`
///
/// When using the `pulumi import` command, ResponsePolicyRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dns/responsePolicyRule:ResponsePolicyRule default projects/{{project}}/responsePolicies/{{response_policy}}/rules/{{rule_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dns/responsePolicyRule:ResponsePolicyRule default {{project}}/{{response_policy}}/{{rule_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dns/responsePolicyRule:ResponsePolicyRule default {{response_policy}}/{{rule_name}}
/// ```
class ResponsePolicyRule extends CustomResource {
  /// Answer this query with a behavior rather than DNS data. Acceptable values are 'behaviorUnspecified', and 'bypassResponsePolicy'
  late final Output<String?> behavior;

  /// The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.
  late final Output<String> dnsName;

  /// Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name;
  /// in particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed.
  /// Structure is documented below.
  late final Output<ResponsePolicyRuleLocalData?> localData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Identifies the response policy addressed by this request.
  late final Output<String> responsePolicy;

  /// An identifier for this rule. Must be unique with the ResponsePolicy.
  late final Output<String> ruleName;

  ResponsePolicyRule(
    String name, {
    ResponsePolicyRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dns/responsePolicyRule:ResponsePolicyRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.behavior = registerOutput<String?>('behavior');
    this.dnsName = registerOutput<String>('dnsName');
    this.localData = registerOutput<ResponsePolicyRuleLocalData?>('localData');
    this.project = registerOutput<String>('project');
    this.responsePolicy = registerOutput<String>('responsePolicy');
    this.ruleName = registerOutput<String>('ruleName');
  }
}

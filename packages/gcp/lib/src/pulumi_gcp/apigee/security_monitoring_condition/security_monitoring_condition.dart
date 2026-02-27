import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_monitoring_condition_args.dart';

/// Security monitoring condition for risk assessment version 2 in Apigee.
///
///
/// To get more information about SecurityMonitoringCondition, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.securityMonitoringConditions/create)
/// * How-to Guides
/// * [Creating a security monitoring condition](https://cloud.google.com/apigee/docs/api-security/security-scores#monitoring-conditions)
///
/// ## Example Usage
///
/// ### Apigee Security Monitoring Condition Basic
///
///
///
///
/// ## Import
///
/// SecurityMonitoringCondition can be imported using any of these accepted formats:
///
/// * `{{org_id}}/securityMonitoringConditions/{{condition_id}}`
///
/// * `{{org_id}}/{{condition_id}}`
///
/// When using the `pulumi import` command, SecurityMonitoringCondition can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/securityMonitoringCondition:SecurityMonitoringCondition default {{org_id}}/securityMonitoringConditions/{{condition_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/securityMonitoringCondition:SecurityMonitoringCondition default {{org_id}}/{{condition_id}}
/// ```
class SecurityMonitoringCondition extends pulumi.CustomResource {
  /// Resource ID of the security monitoring condition.
  late final pulumi.Output<String> conditionId;

  /// The timestamp at which this profile was created.
  late final pulumi.Output<String> createTime;

  /// A nested object resource.
  late final pulumi.Output<Map<String, dynamic>?> includeAllResources;

  /// Name of the security monitoring condition resource,
  /// in the format `organizations/{{org_name}}/securityMonitoringConditions/{{condition_id}}`.
  late final pulumi.Output<String> name;

  /// The Apigee Organization associated with the Apigee Security Monitoring Condition,
  /// in the format `organizations/{{org_name}}`.
  late final pulumi.Output<String> orgId;

  /// ID of security profile of the security monitoring condition.
  late final pulumi.Output<String> profile;

  /// ID of security profile of the security monitoring condition.
  late final pulumi.Output<String> scope;

  /// Total number of deployed resources within scope.
  late final pulumi.Output<int> totalDeployedResources;

  /// Total number of monitored resources within this condition.
  late final pulumi.Output<int> totalMonitoredResources;

  /// The timestamp at which this profile was most recently updated.
  late final pulumi.Output<String> updateTime;

  SecurityMonitoringCondition(
    String name, {
    SecurityMonitoringConditionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/securityMonitoringCondition:SecurityMonitoringCondition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.conditionId = registerOutput<String>('conditionId');
    this.createTime = registerOutput<String>('createTime');
    this.includeAllResources =
        registerOutput<Map<String, dynamic>?>('includeAllResources');
    this.name = registerOutput<String>('name');
    this.orgId = registerOutput<String>('orgId');
    this.profile = registerOutput<String>('profile');
    this.scope = registerOutput<String>('scope');
    this.totalDeployedResources = registerOutput<int>('totalDeployedResources');
    this.totalMonitoredResources =
        registerOutput<int>('totalMonitoredResources');
    this.updateTime = registerOutput<String>('updateTime');
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../config_blocking_functions/config_blocking_functions.dart';
import '../config_client/config_client.dart';
import '../config_mfa/config_mfa.dart';
import '../config_monitoring/config_monitoring.dart';
import '../config_multi_tenant/config_multi_tenant.dart';
import '../config_quota/config_quota.dart';
import '../config_sign_in/config_sign_in.dart';
import '../config_sms_region_config/config_sms_region_config.dart';

/// The set of arguments for Config.
class ConfigArgs {
  /// List of domains authorized for OAuth redirects.
  final pulumi.Input<List<String>>? authorizedDomains;

  /// Whether anonymous users will be auto-deleted after a period of 30 days
  final pulumi.Input<bool>? autodeleteAnonymousUsers;

  /// Configuration related to blocking functions.
  /// Structure is documented below.
  final pulumi.Input<ConfigBlockingFunctions>? blockingFunctions;

  /// Options related to how clients making requests on behalf of a project should be configured.
  /// Structure is documented below.
  final pulumi.Input<ConfigClient>? client;

  /// Options related to how clients making requests on behalf of a project should be configured.
  /// Structure is documented below.
  final pulumi.Input<ConfigMfa>? mfa;

  /// Configuration related to monitoring project activity.
  /// Structure is documented below.
  final pulumi.Input<ConfigMonitoring>? monitoring;

  /// Configuration related to multi-tenant functionality.
  /// Structure is documented below.
  final pulumi.Input<ConfigMultiTenant>? multiTenant;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Configuration related to quotas.
  /// Structure is documented below.
  final pulumi.Input<ConfigQuota>? quota;

  /// Configuration related to local sign in methods.
  /// Structure is documented below.
  final pulumi.Input<ConfigSignIn>? signIn;

  /// Configures the regions where users are allowed to send verification SMS for the project or tenant. This is based on the calling code of the destination phone number.
  /// Structure is documented below.
  final pulumi.Input<ConfigSmsRegionConfig>? smsRegionConfig;

  ConfigArgs({
    this.authorizedDomains,
    this.autodeleteAnonymousUsers,
    this.blockingFunctions,
    this.client,
    this.mfa,
    this.monitoring,
    this.multiTenant,
    this.project,
    this.quota,
    this.signIn,
    this.smsRegionConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorizedDomainsValue = authorizedDomains;
    if (authorizedDomainsValue != null) {
      map['authorizedDomains'] = authorizedDomainsValue;
    }
    final autodeleteAnonymousUsersValue = autodeleteAnonymousUsers;
    if (autodeleteAnonymousUsersValue != null) {
      map['autodeleteAnonymousUsers'] = autodeleteAnonymousUsersValue;
    }
    final blockingFunctionsValue = blockingFunctions;
    if (blockingFunctionsValue != null) {
      map['blockingFunctions'] = pulumi.Input.mapOptionalInputValue<
              ConfigBlockingFunctions, Map<String, dynamic>>(
          blockingFunctionsValue, (value) => value.toMap());
    }
    final clientValue = client;
    if (clientValue != null) {
      map['client'] = pulumi.Input.mapOptionalInputValue<ConfigClient,
          Map<String, dynamic>>(clientValue, (value) => value.toMap());
    }
    final mfaValue = mfa;
    if (mfaValue != null) {
      map['mfa'] =
          pulumi.Input.mapOptionalInputValue<ConfigMfa, Map<String, dynamic>>(
              mfaValue, (value) => value.toMap());
    }
    final monitoringValue = monitoring;
    if (monitoringValue != null) {
      map['monitoring'] = pulumi.Input.mapOptionalInputValue<ConfigMonitoring,
          Map<String, dynamic>>(monitoringValue, (value) => value.toMap());
    }
    final multiTenantValue = multiTenant;
    if (multiTenantValue != null) {
      map['multiTenant'] = pulumi.Input.mapOptionalInputValue<ConfigMultiTenant,
          Map<String, dynamic>>(multiTenantValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final quotaValue = quota;
    if (quotaValue != null) {
      map['quota'] =
          pulumi.Input.mapOptionalInputValue<ConfigQuota, Map<String, dynamic>>(
              quotaValue, (value) => value.toMap());
    }
    final signInValue = signIn;
    if (signInValue != null) {
      map['signIn'] = pulumi.Input.mapOptionalInputValue<ConfigSignIn,
          Map<String, dynamic>>(signInValue, (value) => value.toMap());
    }
    final smsRegionConfigValue = smsRegionConfig;
    if (smsRegionConfigValue != null) {
      map['smsRegionConfig'] = pulumi.Input.mapOptionalInputValue<
          ConfigSmsRegionConfig,
          Map<String, dynamic>>(smsRegionConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConfigArgs.fromMap(Map<String, dynamic> map) {
    return ConfigArgs(
      authorizedDomains:
          pulumi.Input.asOptionalInput<List<String>>(map['authorizedDomains']),
      autodeleteAnonymousUsers:
          pulumi.Input.asOptionalInput<bool>(map['autodeleteAnonymousUsers']),
      blockingFunctions: pulumi.Input.asOptionalInput<ConfigBlockingFunctions>(
          map['blockingFunctions']),
      client: pulumi.Input.asOptionalInput<ConfigClient>(map['client']),
      mfa: pulumi.Input.asOptionalInput<ConfigMfa>(map['mfa']),
      monitoring:
          pulumi.Input.asOptionalInput<ConfigMonitoring>(map['monitoring']),
      multiTenant:
          pulumi.Input.asOptionalInput<ConfigMultiTenant>(map['multiTenant']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      quota: pulumi.Input.asOptionalInput<ConfigQuota>(map['quota']),
      signIn: pulumi.Input.asOptionalInput<ConfigSignIn>(map['signIn']),
      smsRegionConfig: pulumi.Input.asOptionalInput<ConfigSmsRegionConfig>(
          map['smsRegionConfig']),
    );
  }
}

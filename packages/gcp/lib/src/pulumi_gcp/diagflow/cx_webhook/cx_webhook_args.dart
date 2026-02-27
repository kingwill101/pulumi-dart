// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cx_webhook_generic_web_service/cx_webhook_generic_web_service.dart';
import '../cx_webhook_service_directory/cx_webhook_service_directory.dart';

/// The set of arguments for CxWebhook.
class CxWebhookArgs {
  /// Indicates whether the webhook is disabled.
  final pulumi.Input<bool>? disabled;

  /// The human-readable name of the webhook, unique within the agent.
  final pulumi.Input<String> displayName;

  /// Deprecated. Indicates if automatic spell correction is enabled in detect intent requests.
  final pulumi.Input<bool>? enableSpellCorrection;

  /// Deprecated. Determines whether this agent should log conversation queries.
  final pulumi.Input<bool>? enableStackdriverLogging;

  /// Represents configuration for a generic web service.
  /// Structure is documented below.
  final pulumi.Input<CxWebhookGenericWebService>? genericWebService;

  /// The agent to create a webhook for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final pulumi.Input<String>? parent;

  /// Deprecated. Name of the SecuritySettings reference for the agent. Format: projects/<Project ID>/locations/<Location ID>/securitySettings/<Security Settings ID>.
  final pulumi.Input<String>? securitySettings;

  /// Configuration for a Service Directory service.
  /// Structure is documented below.
  final pulumi.Input<CxWebhookServiceDirectory>? serviceDirectory;

  /// Webhook execution timeout.
  final pulumi.Input<String>? timeout;

  CxWebhookArgs({
    this.disabled,
    required this.displayName,
    this.enableSpellCorrection,
    this.enableStackdriverLogging,
    this.genericWebService,
    this.parent,
    this.securitySettings,
    this.serviceDirectory,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    map['displayName'] = displayName;
    final enableSpellCorrectionValue = enableSpellCorrection;
    if (enableSpellCorrectionValue != null) {
      map['enableSpellCorrection'] = enableSpellCorrectionValue;
    }
    final enableStackdriverLoggingValue = enableStackdriverLogging;
    if (enableStackdriverLoggingValue != null) {
      map['enableStackdriverLogging'] = enableStackdriverLoggingValue;
    }
    final genericWebServiceValue = genericWebService;
    if (genericWebServiceValue != null) {
      map['genericWebService'] = pulumi.Input.mapOptionalInputValue<
              CxWebhookGenericWebService, Map<String, dynamic>>(
          genericWebServiceValue, (value) => value.toMap());
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    final securitySettingsValue = securitySettings;
    if (securitySettingsValue != null) {
      map['securitySettings'] = securitySettingsValue;
    }
    final serviceDirectoryValue = serviceDirectory;
    if (serviceDirectoryValue != null) {
      map['serviceDirectory'] = pulumi.Input.mapOptionalInputValue<
              CxWebhookServiceDirectory, Map<String, dynamic>>(
          serviceDirectoryValue, (value) => value.toMap());
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue;
    }
    return map;
  }

  factory CxWebhookArgs.fromMap(Map<String, dynamic> map) {
    return CxWebhookArgs(
      disabled: pulumi.Input.asOptionalInput<bool>(map['disabled']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      enableSpellCorrection:
          pulumi.Input.asOptionalInput<bool>(map['enableSpellCorrection']),
      enableStackdriverLogging:
          pulumi.Input.asOptionalInput<bool>(map['enableStackdriverLogging']),
      genericWebService:
          pulumi.Input.asOptionalInput<CxWebhookGenericWebService>(
              map['genericWebService']),
      parent: pulumi.Input.asOptionalInput<String>(map['parent']),
      securitySettings:
          pulumi.Input.asOptionalInput<String>(map['securitySettings']),
      serviceDirectory: pulumi.Input.asOptionalInput<CxWebhookServiceDirectory>(
          map['serviceDirectory']),
      timeout: pulumi.Input.asOptionalInput<String>(map['timeout']),
    );
  }
}

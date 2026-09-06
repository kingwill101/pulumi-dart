import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether the API try-out feature is enabled or disabled. When enabled, users can try out the API by sending requests and viewing responses in API portal. When disabled, users cannot try out the API.
enum ApiPortalApiTryOutEnabledState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ApiPortalApiTryOutEnabledState(this.wireValue);
  @override
  final String wireValue;

  static ApiPortalApiTryOutEnabledState fromValue(String value) {
    for (final item in ApiPortalApiTryOutEnabledState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiPortalApiTryOutEnabledState value: $value');
  }
}

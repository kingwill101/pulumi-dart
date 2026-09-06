import 'package:pulumi/pulumi.dart' as pulumi;

/// The state.
enum SubscriptionFeatureRegistrationState implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueNotRegistered("NotRegistered"),
  valuePending("Pending"),
  valueRegistering("Registering"),
  valueRegistered("Registered"),
  valueUnregistering("Unregistering"),
  valueUnregistered("Unregistered");

  const SubscriptionFeatureRegistrationState(this.wireValue);
  @override
  final String wireValue;

  static SubscriptionFeatureRegistrationState fromValue(String value) {
    for (final item in SubscriptionFeatureRegistrationState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubscriptionFeatureRegistrationState value: $value');
  }
}

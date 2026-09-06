import 'package:pulumi/pulumi.dart' as pulumi;

/// The RosettaNet ProcessConfiguration activity type.
enum RosettaNetPipActivityType implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueInformationDistribution("InformationDistribution"),
  valueBusinessTransaction("BusinessTransaction"),
  valueNotification("Notification"),
  valueQueryResponse("QueryResponse"),
  valueRequestConfirm("RequestConfirm"),
  valueRequestResponse("RequestResponse");

  const RosettaNetPipActivityType(this.wireValue);
  @override
  final String wireValue;

  static RosettaNetPipActivityType fromValue(String value) {
    for (final item in RosettaNetPipActivityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RosettaNetPipActivityType value: $value');
  }
}

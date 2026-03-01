/// The RosettaNet ProcessConfiguration activity type.
enum RosettaNetPipActivityType {
  valueNotSpecified("NotSpecified"),
  valueInformationDistribution("InformationDistribution"),
  valueBusinessTransaction("BusinessTransaction"),
  valueNotification("Notification"),
  valueQueryResponse("QueryResponse"),
  valueRequestConfirm("RequestConfirm"),
  valueRequestResponse("RequestResponse");

  const RosettaNetPipActivityType(this.value);
  final String value;

  static RosettaNetPipActivityType fromValue(String value) {
    for (final item in RosettaNetPipActivityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RosettaNetPipActivityType value: $value');
  }
}


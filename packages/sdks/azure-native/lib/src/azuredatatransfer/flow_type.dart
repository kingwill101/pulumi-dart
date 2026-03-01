/// Flow type for the specified resource
enum FlowType {
  valueUnknown("Unknown"),
  valueComplex("Complex"),
  valueDevSecOps("DevSecOps"),
  valueMessaging("Messaging"),
  valueMission("Mission"),
  valueMicrosoftInternal("MicrosoftInternal"),
  valueBasicFiles("BasicFiles"),
  valueData("Data"),
  valueStandard("Standard"),
  valueStreamingVideo("StreamingVideo"),
  valueOpaque("Opaque"),
  valueMissionOpaqueXML("MissionOpaqueXML");

  const FlowType(this.value);
  final String value;

  static FlowType fromValue(String value) {
    for (final item in FlowType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FlowType value: $value');
  }
}


import 'package:pulumi/pulumi.dart' as pulumi;

enum ProgressiveLambdaLifecycleStage implements pulumi.PulumiEnum<String> {
  rECONCILESERVICE("RECONCILE_SERVICE"),
  pRESCALEUP("PRE_SCALE_UP"),
  pOSTSCALEUP("POST_SCALE_UP"),
  tESTTRAFFICSHIFT("TEST_TRAFFIC_SHIFT"),
  pOSTTESTTRAFFICSHIFT("POST_TEST_TRAFFIC_SHIFT"),
  pREPRODUCTIONTRAFFICSHIFT("PRE_PRODUCTION_TRAFFIC_SHIFT"),
  pRODUCTIONTRAFFICSHIFT("PRODUCTION_TRAFFIC_SHIFT"),
  pOSTPRODUCTIONTRAFFICSHIFT("POST_PRODUCTION_TRAFFIC_SHIFT");

  const ProgressiveLambdaLifecycleStage(this.wireValue);
  @override
  final String wireValue;

  static ProgressiveLambdaLifecycleStage fromValue(String value) {
    for (final item in ProgressiveLambdaLifecycleStage.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProgressiveLambdaLifecycleStage value: $value');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;

enum ProgressivePauseLifecycleStage implements pulumi.PulumiEnum<String> {
  rECONCILESERVICE("RECONCILE_SERVICE"),
  pRESCALEUP("PRE_SCALE_UP"),
  pOSTSCALEUP("POST_SCALE_UP"),
  pOSTTESTTRAFFICSHIFT("POST_TEST_TRAFFIC_SHIFT"),
  pREPRODUCTIONTRAFFICSHIFT("PRE_PRODUCTION_TRAFFIC_SHIFT"),
  pOSTPRODUCTIONTRAFFICSHIFT("POST_PRODUCTION_TRAFFIC_SHIFT");

  const ProgressivePauseLifecycleStage(this.wireValue);
  @override
  final String wireValue;

  static ProgressivePauseLifecycleStage fromValue(String value) {
    for (final item in ProgressivePauseLifecycleStage.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProgressivePauseLifecycleStage value: $value');
  }
}

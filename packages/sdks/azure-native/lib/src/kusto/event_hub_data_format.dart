import 'package:pulumi/pulumi.dart' as pulumi;

/// The data format of the message. Optionally the data format can be added to each message.
enum EventHubDataFormat implements pulumi.PulumiEnum<String> {
  valueMULTIJSON("MULTIJSON"),
  valueJSON("JSON"),
  valueCSV("CSV"),
  valueTSV("TSV"),
  valueSCSV("SCSV"),
  valueSOHSV("SOHSV"),
  valuePSV("PSV"),
  valueTXT("TXT"),
  valueRAW("RAW"),
  valueSINGLEJSON("SINGLEJSON"),
  valueAVRO("AVRO"),
  valueTSVE("TSVE"),
  valuePARQUET("PARQUET"),
  valueORC("ORC"),
  valueAPACHEAVRO("APACHEAVRO"),
  valueW3CLOGFILE("W3CLOGFILE");

  const EventHubDataFormat(this.wireValue);
  @override
  final String wireValue;

  static EventHubDataFormat fromValue(String value) {
    for (final item in EventHubDataFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventHubDataFormat value: $value');
  }
}

/// The data format of the message. Optionally the data format can be added to each message.
enum IotHubDataFormat {
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

  const IotHubDataFormat(this.wireValue);
  final String wireValue;

  static IotHubDataFormat fromValue(String value) {
    for (final item in IotHubDataFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IotHubDataFormat value: $value');
  }
}

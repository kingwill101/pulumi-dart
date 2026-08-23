/// The data format of the message. Optionally the data format can be added to each message.
enum EventGridDataFormat {
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

  const EventGridDataFormat(this.wireValue);
  final String wireValue;

  static EventGridDataFormat fromValue(String value) {
    for (final item in EventGridDataFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventGridDataFormat value: $value');
  }
}

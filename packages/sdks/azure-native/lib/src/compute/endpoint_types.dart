/// This property allows you to specify the Endpoint type for which this profile is defining the access control for. Possible values are: 'WireServer' or 'IMDS'
enum EndpointTypes {
  valueWireServer("WireServer"),
  valueIMDS("IMDS");

  const EndpointTypes(this.value);
  final String value;

  static EndpointTypes fromValue(String value) {
    for (final item in EndpointTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointTypes value: $value');
  }
}


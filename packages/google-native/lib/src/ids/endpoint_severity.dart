/// Required. Lowest threat severity that this endpoint will alert on.
enum EndpointSeverity {
  severityUnspecified("SEVERITY_UNSPECIFIED"),
  informational("INFORMATIONAL"),
  low("LOW"),
  medium("MEDIUM"),
  high("HIGH"),
  critical("CRITICAL");

  const EndpointSeverity(this.value);
  final String value;

  static EndpointSeverity fromValue(String value) {
    for (final item in EndpointSeverity.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointSeverity value: $value');
  }
}


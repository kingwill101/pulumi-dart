// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getChannelFullUrl.
class GetChannelFullUrlResult {
  /// The URL that represents the endpoint of the destination of an event subscription.
  final String? endpointUrl;

  /// Creates a new [GetChannelFullUrlResult].
  /// [endpointUrl] The URL that represents the endpoint of the destination of an event subscription.
  const GetChannelFullUrlResult({
    this.endpointUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointUrl': ?endpointUrl,
    };
  }

  factory GetChannelFullUrlResult.fromMap(Map<String, dynamic> map) {
    return GetChannelFullUrlResult(
      endpointUrl: (() { final guardedValue = map['endpointUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}


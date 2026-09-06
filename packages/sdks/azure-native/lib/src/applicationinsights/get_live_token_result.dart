// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLiveToken.
class GetLiveTokenResult {
  /// JWT token for accessing live metrics stream data.
  final String? liveToken;

  /// Creates a new [GetLiveTokenResult].
  /// [liveToken] JWT token for accessing live metrics stream data.
  const GetLiveTokenResult({
    this.liveToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'liveToken': ?liveToken,
    };
  }

  factory GetLiveTokenResult.fromMap(Map<String, dynamic> map) {
    return GetLiveTokenResult(
      liveToken: (() { final guardedValue = map['liveToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

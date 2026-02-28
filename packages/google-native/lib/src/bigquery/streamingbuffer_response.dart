// ignore_for_file: unused_element, unnecessary_cast

class StreamingbufferResponse {
  /// A lower-bound estimate of the number of bytes currently in the streaming buffer.
  final String estimatedBytes;

  /// A lower-bound estimate of the number of rows currently in the streaming buffer.
  final String estimatedRows;

  /// Contains the timestamp of the oldest entry in the streaming buffer, in milliseconds since the epoch, if the streaming buffer is available.
  final String oldestEntryTime;

  /// Creates a new [StreamingbufferResponse].
  /// [estimatedBytes] A lower-bound estimate of the number of bytes currently in the streaming buffer.
  /// [estimatedRows] A lower-bound estimate of the number of rows currently in the streaming buffer.
  /// [oldestEntryTime] Contains the timestamp of the oldest entry in the streaming buffer, in milliseconds since the epoch, if the streaming buffer is available.
  StreamingbufferResponse({
    required this.estimatedBytes,
    required this.estimatedRows,
    required this.oldestEntryTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['estimatedBytes'] = estimatedBytes;
    map['estimatedRows'] = estimatedRows;
    map['oldestEntryTime'] = oldestEntryTime;
    return map;
  }

  factory StreamingbufferResponse.fromMap(Map<String, dynamic> map) {
    return StreamingbufferResponse(
      estimatedBytes: map['estimatedBytes'] as String,
      estimatedRows: map['estimatedRows'] as String,
      oldestEntryTime: map['oldestEntryTime'] as String,
    );
  }
}

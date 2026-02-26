// ignore_for_file: unused_element, unnecessary_cast

class JobStatistics4Response {
  /// Number of files per destination URI or URI pattern specified in the extract configuration. These values will be in the same order as the URIs specified in the 'destinationUris' field.
  final List<String> destinationUriFileCounts;

  /// Number of user bytes extracted into the result. This is the byte count as computed by BigQuery for billing purposes.
  final String inputBytes;

  JobStatistics4Response({
    required this.destinationUriFileCounts,
    required this.inputBytes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationUriFileCounts'] = destinationUriFileCounts;
    map['inputBytes'] = inputBytes;
    return map;
  }

  factory JobStatistics4Response.fromMap(Map<String, dynamic> map) {
    return JobStatistics4Response(
      destinationUriFileCounts:
          (map['destinationUriFileCounts'] as List).cast<String>(),
      inputBytes: map['inputBytes'] as String,
    );
  }
}

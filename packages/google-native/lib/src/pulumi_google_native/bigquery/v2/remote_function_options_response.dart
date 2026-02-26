// ignore_for_file: unused_element, unnecessary_cast

/// Options for a remote user-defined function.
class RemoteFunctionOptionsResponse {
  /// Fully qualified name of the user-provided connection object which holds the authentication information to send requests to the remote service. Format: ```"projects/{projectId}/locations/{locationId}/connections/{connectionId}"```
  final String connection;

  /// Endpoint of the user-provided remote service, e.g. ```https://us-east1-my_gcf_project.cloudfunctions.net/remote_add```
  final String endpoint;

  /// Max number of rows in each batch sent to the remote service. If absent or if 0, BigQuery dynamically decides the number of rows in a batch.
  final String maxBatchingRows;

  /// User-defined context as a set of key/value pairs, which will be sent as function invocation context together with batched arguments in the requests to the remote service. The total number of bytes of keys and values must be less than 8KB.
  final Map<String, String> userDefinedContext;

  RemoteFunctionOptionsResponse({
    required this.connection,
    required this.endpoint,
    required this.maxBatchingRows,
    required this.userDefinedContext,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connection'] = connection;
    map['endpoint'] = endpoint;
    map['maxBatchingRows'] = maxBatchingRows;
    map['userDefinedContext'] = userDefinedContext;
    return map;
  }

  factory RemoteFunctionOptionsResponse.fromMap(Map<String, dynamic> map) {
    return RemoteFunctionOptionsResponse(
      connection: map['connection'] as String,
      endpoint: map['endpoint'] as String,
      maxBatchingRows: map['maxBatchingRows'] as String,
      userDefinedContext:
          (map['userDefinedContext'] as Map).cast<String, String>(),
    );
  }
}

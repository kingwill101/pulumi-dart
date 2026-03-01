// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_profile_http2_profile_http2_args_doc}
/// The set of arguments for ProfileHttp2.
/// {@endtemplate}
/// {@macro pulumi_ltm_profile_http2_profile_http2_args_doc}
class ProfileHttp2Args {
  /// This setting specifies the condition that will cause the BIG-IP system to handle an incoming connection as an HTTP/2 connection, Allowed values : `[“alpn”]` (or) `[“always”]`.
  final pulumi.Input<List<String>>? activationModes;
  /// Specifies how many concurrent requests are allowed to be outstanding on a single HTTP/2 connection.
  final pulumi.Input<int>? concurrentStreamsPerConnection;
  /// Specifies the number of seconds that a connection is idle before the connection is eligible for deletion.
  final pulumi.Input<int>? connectionIdleTimeout;
  /// Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  final pulumi.Input<String>? defaultsFrom;
  /// Enable or disable enforcement of TLS requirements,Allowed Values : `"enabled"/"disabled"` [Default:`"enabled"`].
  final pulumi.Input<String>? enforceTlsRequirements;
  /// The size of the data frames, in bytes, that the HTTP/2 protocol sends to the client. `Default: 2048`.
  final pulumi.Input<int>? frameSize;
  /// The size of the header table, in KB, for the HTTP headers that the HTTP/2 protocol compresses to save bandwidth.
  final pulumi.Input<int>? headerTableSize;
  /// Enable to include content-length in HTTP/2 headers,Default : disabled
  final pulumi.Input<String>? includeContentLength;
  /// This setting specifies whether the BIG-IP system should add an HTTP header to the HTTP request to show that the request was received over HTTP/2, Allowed Values : `"enabled"/"disabled"` [ Default: `"disabled"`].
  final pulumi.Input<String>? insertHeader;
  /// This setting specifies the name of the header that the BIG-IP system will add to the HTTP request when the Insert Header is enabled.
  final pulumi.Input<String>? insertHeaderName;
  /// Name of Profile should be full path.The full path is the combination of the `partition + profile name`,For example `/Common/test-http2-profile`.
  final pulumi.Input<String> name;
  /// The flow-control size for upload streams, in KB. `Default: 32`.
  final pulumi.Input<int>? receiveWindow;
  /// The total size of combined data frames, in bytes, that the HTTP/2 protocol sends in a single write function. `Default: 16384`".
  final pulumi.Input<int>? writeSize;

  /// Creates a new [ProfileHttp2Args].
  /// [activationModes] This setting specifies the condition that will cause the BIG-IP system to handle an incoming connection as an HTTP/2 connection, Allowed values : `[“alpn”]` (or) `[“always”]`.
  /// [concurrentStreamsPerConnection] Specifies how many concurrent requests are allowed to be outstanding on a single HTTP/2 connection.
  /// [connectionIdleTimeout] Specifies the number of seconds that a connection is idle before the connection is eligible for deletion.
  /// [defaultsFrom] Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  /// [enforceTlsRequirements] Enable or disable enforcement of TLS requirements,Allowed Values : `"enabled"/"disabled"` [Default:`"enabled"`].
  /// [frameSize] The size of the data frames, in bytes, that the HTTP/2 protocol sends to the client. `Default: 2048`.
  /// [headerTableSize] The size of the header table, in KB, for the HTTP headers that the HTTP/2 protocol compresses to save bandwidth.
  /// [includeContentLength] Enable to include content-length in HTTP/2 headers,Default : disabled
  /// [insertHeader] This setting specifies whether the BIG-IP system should add an HTTP header to the HTTP request to show that the request was received over HTTP/2, Allowed Values : `"enabled"/"disabled"` [ Default: `"disabled"`].
  /// [insertHeaderName] This setting specifies the name of the header that the BIG-IP system will add to the HTTP request when the Insert Header is enabled.
  /// [name] Name of Profile should be full path.The full path is the combination of the `partition + profile name`,For example `/Common/test-http2-profile`.
  /// [receiveWindow] The flow-control size for upload streams, in KB. `Default: 32`.
  /// [writeSize] The total size of combined data frames, in bytes, that the HTTP/2 protocol sends in a single write function. `Default: 16384`".
  ProfileHttp2Args({
    List<String>? activationModes,
    int? concurrentStreamsPerConnection,
    int? connectionIdleTimeout,
    String? defaultsFrom,
    String? enforceTlsRequirements,
    int? frameSize,
    int? headerTableSize,
    String? includeContentLength,
    String? insertHeader,
    String? insertHeaderName,
    required String name,
    int? receiveWindow,
    int? writeSize,
  }) :
      activationModes = pulumi.Input.asOptionalInput<List<String>>(activationModes),
      concurrentStreamsPerConnection = pulumi.Input.asOptionalInput<int>(concurrentStreamsPerConnection),
      connectionIdleTimeout = pulumi.Input.asOptionalInput<int>(connectionIdleTimeout),
      defaultsFrom = pulumi.Input.asOptionalInput<String>(defaultsFrom),
      enforceTlsRequirements = pulumi.Input.asOptionalInput<String>(enforceTlsRequirements),
      frameSize = pulumi.Input.asOptionalInput<int>(frameSize),
      headerTableSize = pulumi.Input.asOptionalInput<int>(headerTableSize),
      includeContentLength = pulumi.Input.asOptionalInput<String>(includeContentLength),
      insertHeader = pulumi.Input.asOptionalInput<String>(insertHeader),
      insertHeaderName = pulumi.Input.asOptionalInput<String>(insertHeaderName),
      name = pulumi.Input.asInput<String>(name),
      receiveWindow = pulumi.Input.asOptionalInput<int>(receiveWindow),
      writeSize = pulumi.Input.asOptionalInput<int>(writeSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationModes': ?activationModes,
      'concurrentStreamsPerConnection': ?concurrentStreamsPerConnection,
      'connectionIdleTimeout': ?connectionIdleTimeout,
      'defaultsFrom': ?defaultsFrom,
      'enforceTlsRequirements': ?enforceTlsRequirements,
      'frameSize': ?frameSize,
      'headerTableSize': ?headerTableSize,
      'includeContentLength': ?includeContentLength,
      'insertHeader': ?insertHeader,
      'insertHeaderName': ?insertHeaderName,
      'name': name,
      'receiveWindow': ?receiveWindow,
      'writeSize': ?writeSize,
    };
  }

  factory ProfileHttp2Args.fromMap(Map<String, dynamic> map) {
    return ProfileHttp2Args(
      activationModes: map['activationModes'] == null ? null : (map['activationModes'] as List).cast<String>(),
      concurrentStreamsPerConnection: map['concurrentStreamsPerConnection'] == null ? null : map['concurrentStreamsPerConnection'] as int,
      connectionIdleTimeout: map['connectionIdleTimeout'] == null ? null : map['connectionIdleTimeout'] as int,
      defaultsFrom: map['defaultsFrom'] == null ? null : map['defaultsFrom'] as String,
      enforceTlsRequirements: map['enforceTlsRequirements'] == null ? null : map['enforceTlsRequirements'] as String,
      frameSize: map['frameSize'] == null ? null : map['frameSize'] as int,
      headerTableSize: map['headerTableSize'] == null ? null : map['headerTableSize'] as int,
      includeContentLength: map['includeContentLength'] == null ? null : map['includeContentLength'] as String,
      insertHeader: map['insertHeader'] == null ? null : map['insertHeader'] as String,
      insertHeaderName: map['insertHeaderName'] == null ? null : map['insertHeaderName'] as String,
      name: map['name'] as String,
      receiveWindow: map['receiveWindow'] == null ? null : map['receiveWindow'] as int,
      writeSize: map['writeSize'] == null ? null : map['writeSize'] as int,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_server_server_args_doc}
/// The set of arguments for Server.
/// {@endtemplate}
/// {@macro pulumi_index_server_server_args_doc}
class ServerArgs {
  /// When true, will drop objects that depend on the server (such as user mappings), and in turn all objects that depend on those objects . (Default: false)
  final pulumi.Input<bool>? dropCascade;
  /// The name of the foreign-data wrapper that manages the server.
  /// Changing this value
  /// will force the creation of a new resource as this value can only be set
  /// when the foreign server is created.
  final pulumi.Input<String> fdwName;
  /// This clause specifies the options for the server. The options typically define the connection details of the server, but the actual names and values are dependent on the server's foreign-data wrapper.
  final pulumi.Input<Map<String, String>>? options;
  /// The name of the foreign server to be created.
  final pulumi.Input<String> serverName;
  /// By default, the user who defines the server becomes its owner. Set this value to configure the new owner of the foreign server.
  final pulumi.Input<String>? serverOwner;
  /// Optional server type, potentially useful to foreign-data wrappers.
  /// Changing this value
  /// will force the creation of a new resource as this value can only be set
  /// when the foreign server is created.
  final pulumi.Input<String>? serverType;
  /// Optional server version, potentially useful to foreign-data wrappers.
  final pulumi.Input<String>? serverVersion;

  /// Creates a new [ServerArgs].
  /// [dropCascade] When true, will drop objects that depend on the server (such as user mappings), and in turn all objects that depend on those objects . (Default: false)
  /// [fdwName] The name of the foreign-data wrapper that manages the server.
  /// [options] This clause specifies the options for the server. The options typically define the connection details of the server, but the actual names and values are dependent on the server's foreign-data wrapper.
  /// [serverName] The name of the foreign server to be created.
  /// [serverOwner] By default, the user who defines the server becomes its owner. Set this value to configure the new owner of the foreign server.
  /// [serverType] Optional server type, potentially useful to foreign-data wrappers.
  /// [serverVersion] Optional server version, potentially useful to foreign-data wrappers.
  ServerArgs({
    bool? dropCascade,
    required String fdwName,
    Map<String, String>? options,
    required String serverName,
    String? serverOwner,
    String? serverType,
    String? serverVersion,
  }) :
      dropCascade = pulumi.Input.asOptionalInput<bool>(dropCascade),
      fdwName = pulumi.Input.asInput<String>(fdwName),
      options = pulumi.Input.asOptionalInput<Map<String, String>>(options),
      serverName = pulumi.Input.asInput<String>(serverName),
      serverOwner = pulumi.Input.asOptionalInput<String>(serverOwner),
      serverType = pulumi.Input.asOptionalInput<String>(serverType),
      serverVersion = pulumi.Input.asOptionalInput<String>(serverVersion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropCascade': ?dropCascade,
      'fdwName': fdwName,
      'options': ?options,
      'serverName': serverName,
      'serverOwner': ?serverOwner,
      'serverType': ?serverType,
      'serverVersion': ?serverVersion,
    };
  }

  factory ServerArgs.fromMap(Map<String, dynamic> map) {
    return ServerArgs(
      dropCascade: map['dropCascade'] == null ? null : map['dropCascade'] as bool,
      fdwName: map['fdwName'] as String,
      options: map['options'] == null ? null : (map['options'] as Map).cast<String, String>(),
      serverName: map['serverName'] as String,
      serverOwner: map['serverOwner'] == null ? null : map['serverOwner'] as String,
      serverType: map['serverType'] == null ? null : map['serverType'] as String,
      serverVersion: map['serverVersion'] == null ? null : map['serverVersion'] as String,
    );
  }
}


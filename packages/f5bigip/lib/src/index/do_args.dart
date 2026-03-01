// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_do_do_args_doc}
/// The set of arguments for Do.
/// {@endtemplate}
/// {@macro pulumi_index_do_do_args_doc}
class DoArgs {
  /// IP Address of BIGIP Host to be used for this resource,this is optional parameter.
  /// whenever we specify this parameter it gets overwrite provider configuration
  final pulumi.Input<String>? bigipAddress;
  /// Password of  BIGIP host to be used for this resource
  final pulumi.Input<String>? bigipPassword;
  /// Port number of BIGIP host to be used for this resource,this is optional parameter.
  /// whenever we specify this parameter it gets overwrite provider configuration
  final pulumi.Input<String>? bigipPort;
  /// Enable to use an external authentication source (LDAP, TACACS, etc)
  final pulumi.Input<bool>? bigipTokenAuth;
  /// UserName of BIGIP host to be used for this resource,this is optional parameter.
  /// whenever we specify this parameter it gets overwrite provider configuration
  final pulumi.Input<String>? bigipUser;
  /// Name of the of the Declarative DO JSON file
  final pulumi.Input<String> doJson;
  /// unique identifier for DO resource
  final pulumi.Input<String>? tenantName;
  /// DO json
  final pulumi.Input<int>? timeout;

  /// Creates a new [DoArgs].
  /// [bigipAddress] IP Address of BIGIP Host to be used for this resource,this is optional parameter.
  /// [bigipPassword] Password of  BIGIP host to be used for this resource
  /// [bigipPort] Port number of BIGIP host to be used for this resource,this is optional parameter.
  /// [bigipTokenAuth] Enable to use an external authentication source (LDAP, TACACS, etc)
  /// [bigipUser] UserName of BIGIP host to be used for this resource,this is optional parameter.
  /// [doJson] Name of the of the Declarative DO JSON file
  /// [tenantName] unique identifier for DO resource
  /// [timeout] DO json
  DoArgs({
    String? bigipAddress,
    String? bigipPassword,
    String? bigipPort,
    bool? bigipTokenAuth,
    String? bigipUser,
    required String doJson,
    String? tenantName,
    int? timeout,
  }) :
      bigipAddress = pulumi.Input.asOptionalInput<String>(bigipAddress),
      bigipPassword = pulumi.Input.asOptionalInput<String>(bigipPassword),
      bigipPort = pulumi.Input.asOptionalInput<String>(bigipPort),
      bigipTokenAuth = pulumi.Input.asOptionalInput<bool>(bigipTokenAuth),
      bigipUser = pulumi.Input.asOptionalInput<String>(bigipUser),
      doJson = pulumi.Input.asInput<String>(doJson),
      tenantName = pulumi.Input.asOptionalInput<String>(tenantName),
      timeout = pulumi.Input.asOptionalInput<int>(timeout);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigipAddress': ?bigipAddress,
      'bigipPassword': ?bigipPassword,
      'bigipPort': ?bigipPort,
      'bigipTokenAuth': ?bigipTokenAuth,
      'bigipUser': ?bigipUser,
      'doJson': doJson,
      'tenantName': ?tenantName,
      'timeout': ?timeout,
    };
  }

  factory DoArgs.fromMap(Map<String, dynamic> map) {
    return DoArgs(
      bigipAddress: map['bigipAddress'] == null ? null : map['bigipAddress'] as String,
      bigipPassword: map['bigipPassword'] == null ? null : map['bigipPassword'] as String,
      bigipPort: map['bigipPort'] == null ? null : map['bigipPort'] as String,
      bigipTokenAuth: map['bigipTokenAuth'] == null ? null : map['bigipTokenAuth'] as bool,
      bigipUser: map['bigipUser'] == null ? null : map['bigipUser'] as String,
      doJson: map['doJson'] as String,
      tenantName: map['tenantName'] == null ? null : map['tenantName'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
    );
  }
}


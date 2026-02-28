// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directoryservice_shared_directory_accepter_shared_directory_accepter_args_doc}
/// The set of arguments for SharedDirectoryAccepter.
/// {@endtemplate}
/// {@macro pulumi_directoryservice_shared_directory_accepter_shared_directory_accepter_args_doc}
class SharedDirectoryAccepterArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of the directory that is stored in the directory consumer account that corresponds to the shared directory in the owner account.
  final pulumi.Input<String> sharedDirectoryId;

  /// Creates a new [SharedDirectoryAccepterArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sharedDirectoryId] Identifier of the directory that is stored in the directory consumer account that corresponds to the shared directory in the owner account.
  SharedDirectoryAccepterArgs({
    String? region,
    required String sharedDirectoryId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      sharedDirectoryId = pulumi.Input.asInput<String>(sharedDirectoryId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'sharedDirectoryId': sharedDirectoryId,
    };
  }

  factory SharedDirectoryAccepterArgs.fromMap(Map<String, dynamic> map) {
    return SharedDirectoryAccepterArgs(
      region: map['region'] == null ? null : map['region'] as String,
      sharedDirectoryId: map['sharedDirectoryId'] as String,
    );
  }
}


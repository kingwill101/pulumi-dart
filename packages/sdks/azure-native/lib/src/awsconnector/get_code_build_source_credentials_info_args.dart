// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_code_build_source_credentials_info_args_doc}
/// Arguments for getCodeBuildSourceCredentialsInfo.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_code_build_source_credentials_info_args_doc}
class GetCodeBuildSourceCredentialsInfoArgs {
  /// Name of CodeBuildSourceCredentialsInfo
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCodeBuildSourceCredentialsInfoArgs].
  /// [name] Name of CodeBuildSourceCredentialsInfo
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCodeBuildSourceCredentialsInfoArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCodeBuildSourceCredentialsInfoArgs.fromMap(Map<String, dynamic> map) {
    return GetCodeBuildSourceCredentialsInfoArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_config_function_arg.dart';

/// {@template pulumi_scdn_domain_config_domain_config_args_doc}
/// The set of arguments for DomainConfig.
/// {@endtemplate}
/// {@macro pulumi_scdn_domain_config_domain_config_args_doc}
class DomainConfigArgs {
  /// Name of the accelerated domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  final pulumi.Input<String> domainName;
  /// The args of the domain config.
  final pulumi.Input<List<DomainConfigFunctionArg>> functionArgs;
  /// The name of the domain config.
  final pulumi.Input<String> functionName;

  /// Creates a new [DomainConfigArgs].
  /// [domainName] Name of the accelerated domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  /// [functionArgs] The args of the domain config.
  /// [functionName] The name of the domain config.
  DomainConfigArgs({
    required String domainName,
    required List<DomainConfigFunctionArg> functionArgs,
    required String functionName,
  }) :
      domainName = pulumi.Input.asInput<String>(domainName),
      functionArgs = pulumi.Input.asInput<List<DomainConfigFunctionArg>>(functionArgs),
      functionName = pulumi.Input.asInput<String>(functionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'functionArgs': pulumi.Input.mapInputValue<List<DomainConfigFunctionArg>, List<Map<String, dynamic>>>(functionArgs, (value) => pulumi.Input.encodeList<DomainConfigFunctionArg, Map<String, dynamic>>(value, (value) => value.toMap())),
      'functionName': functionName,
    };
  }

  factory DomainConfigArgs.fromMap(Map<String, dynamic> map) {
    return DomainConfigArgs(
      domainName: map['domainName'] as String,
      functionArgs: pulumi.Input.decodeList<DomainConfigFunctionArg>(map['functionArgs'], (value) => DomainConfigFunctionArg.fromMap((value as Map).cast<String, dynamic>())),
      functionName: map['functionName'] as String,
    );
  }
}


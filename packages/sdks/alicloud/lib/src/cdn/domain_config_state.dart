// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_config_function_arg.dart';

/// Input properties used for looking up and filtering DomainConfig resources.
class DomainConfigState {
  /// (Available since v1.132.0) The ID of the domain config function.
  final pulumi.Input<String>? configId;
  /// Name of the accelerated domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  final pulumi.Input<String>? domainName;
  /// The args of the domain config. See `function_args` below.
  final pulumi.Input<List<DomainConfigFunctionArg>>? functionArgs;
  /// The name of the domain config.
  final pulumi.Input<String>? functionName;
  /// By configuring the function condition (rule engine) in the domain name configuration function parameters, Rule conditions can be created (Rule conditions can match and filter user requests by identifying various parameters carried in user requests). After each rule condition is created, a corresponding ConfigId will be generated, and the ConfigId can be referenced by other functions as a ParentId parameter, in this way, the rule conditions can be combined with the functional configuration to form a more flexible configuration.
  final pulumi.Input<String>? parentId;
  /// (Available since v1.132.0) The Status of the function.
  final pulumi.Input<String>? status;

  /// Creates a new [DomainConfigState].
  /// [configId] (Available since v1.132.0) The ID of the domain config function.
  /// [domainName] Name of the accelerated domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  /// [functionArgs] The args of the domain config. See `function_args` below.
  /// [functionName] The name of the domain config.
  /// [parentId] By configuring the function condition (rule engine) in the domain name configuration function parameters, Rule conditions can be created (Rule conditions can match and filter user requests by identifying various parameters carried in user requests). After each rule condition is created, a corresponding ConfigId will be generated, and the ConfigId can be referenced by other functions as a ParentId parameter, in this way, the rule conditions can be combined with the functional configuration to form a more flexible configuration.
  /// [status] (Available since v1.132.0) The Status of the function.
  DomainConfigState({
    pulumi.Output<String>? configId,
    pulumi.Output<String>? domainName,
    pulumi.Output<List<DomainConfigFunctionArg>>? functionArgs,
    pulumi.Output<String>? functionName,
    pulumi.Output<String>? parentId,
    pulumi.Output<String>? status,
  }) :
      configId = pulumi.Input.asOptionalInput<String>(configId),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      functionArgs = pulumi.Input.asOptionalInput<List<DomainConfigFunctionArg>>(functionArgs),
      functionName = pulumi.Input.asOptionalInput<String>(functionName),
      parentId = pulumi.Input.asOptionalInput<String>(parentId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
      'domainName': ?domainName,
      'functionArgs': ?pulumi.Input.mapOptionalInputValue<List<DomainConfigFunctionArg>, List<Map<String, dynamic>>>(functionArgs, (value) => pulumi.Input.encodeList<DomainConfigFunctionArg, Map<String, dynamic>>(value, (value) => value.toMap())),
      'functionName': ?functionName,
      'parentId': ?parentId,
      'status': ?status,
    };
  }

  factory DomainConfigState.fromMap(Map<String, dynamic> map) {
    return DomainConfigState(
      configId: map['configId'] == null ? null : pulumi.Output.create<String>(map['configId'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      functionArgs: map['functionArgs'] == null ? null : pulumi.Output.create<List<DomainConfigFunctionArg>>(pulumi.Input.decodeList<DomainConfigFunctionArg>(map['functionArgs'], (value) => DomainConfigFunctionArg.fromMap((value as Map).cast<String, dynamic>()))),
      functionName: map['functionName'] == null ? null : pulumi.Output.create<String>(map['functionName'] as String),
      parentId: map['parentId'] == null ? null : pulumi.Output.create<String>(map['parentId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}


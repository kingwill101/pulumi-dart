// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_config_function_arg.dart';

/// Input properties used for looking up and filtering DomainConfig resources.
class DomainConfigState {
  /// The SCDN domain config id.
  final pulumi.Input<String>? configId;
  /// Name of the accelerated domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  final pulumi.Input<String>? domainName;
  /// The args of the domain config.
  final pulumi.Input<List<DomainConfigFunctionArg>>? functionArgs;
  /// The name of the domain config.
  final pulumi.Input<String>? functionName;
  /// The status of this resource.
  final pulumi.Input<String>? status;

  /// Creates a new [DomainConfigState].
  /// [configId] The SCDN domain config id.
  /// [domainName] Name of the accelerated domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  /// [functionArgs] The args of the domain config.
  /// [functionName] The name of the domain config.
  /// [status] The status of this resource.
  const DomainConfigState({
    this.configId,
    this.domainName,
    this.functionArgs,
    this.functionName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
      'domainName': ?domainName,
      'functionArgs': ?pulumi.Input.mapOptionalInputValue<List<DomainConfigFunctionArg>, List<Map<String, dynamic>>>(functionArgs, (value) => pulumi.Input.encodeList<DomainConfigFunctionArg, Map<String, dynamic>>(value, (value) => value.toMap())),
      'functionName': ?functionName,
      'status': ?status,
    };
  }

  factory DomainConfigState.fromMap(Map<String, dynamic> map) {
    return DomainConfigState(
      configId: (() { final guardedValue = map['configId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionArgs: (() { final guardedValue = map['functionArgs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainConfigFunctionArg>(guardedValue, (value) => DomainConfigFunctionArg.fromMap((value as Map).cast<String, dynamic>()))); })(),
      functionName: (() { final guardedValue = map['functionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


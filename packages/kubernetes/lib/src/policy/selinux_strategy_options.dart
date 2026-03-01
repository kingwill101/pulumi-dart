// ignore_for_file: unused_element, unnecessary_cast

import '../core/selinux_options.dart';

/// SELinuxStrategyOptions defines the strategy type and any options used to create the strategy.
class SELinuxStrategyOptions {
  /// rule is the strategy that will dictate the allowable labels that may be set.
  final String rule;
  /// seLinuxOptions required to run as; required for MustRunAs More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/
  final SELinuxOptions? seLinuxOptions;

  /// Creates a new [SELinuxStrategyOptions].
  /// [rule] rule is the strategy that will dictate the allowable labels that may be set.
  /// [seLinuxOptions] seLinuxOptions required to run as; required for MustRunAs More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/
  SELinuxStrategyOptions({
    required this.rule,
    this.seLinuxOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rule': rule,
      'seLinuxOptions': ?seLinuxOptions == null ? null : seLinuxOptions!.toMap(),
    };
  }

  factory SELinuxStrategyOptions.fromMap(Map<String, dynamic> map) {
    return SELinuxStrategyOptions(
      rule: map['rule'] as String,
      seLinuxOptions: map['seLinuxOptions'] == null ? null : SELinuxOptions.fromMap((map['seLinuxOptions'] as Map).cast<String, dynamic>()),
    );
  }
}


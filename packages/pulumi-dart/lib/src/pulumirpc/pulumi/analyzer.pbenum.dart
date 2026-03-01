// This is a generated file - do not edit.
//
// Generated from pulumi/analyzer.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// EnforcementLevel indicates the severity of a policy violation.
class EnforcementLevel extends $pb.ProtobufEnum {
  static const EnforcementLevel ADVISORY =
      EnforcementLevel._(0, _omitEnumNames ? '' : 'ADVISORY');
  static const EnforcementLevel MANDATORY =
      EnforcementLevel._(1, _omitEnumNames ? '' : 'MANDATORY');
  static const EnforcementLevel DISABLED =
      EnforcementLevel._(2, _omitEnumNames ? '' : 'DISABLED');
  static const EnforcementLevel REMEDIATE =
      EnforcementLevel._(3, _omitEnumNames ? '' : 'REMEDIATE');

  static const $core.List<EnforcementLevel> values = <EnforcementLevel>[
    ADVISORY,
    MANDATORY,
    DISABLED,
    REMEDIATE,
  ];

  static final $core.List<EnforcementLevel?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static EnforcementLevel? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const EnforcementLevel._(super.value, super.name);
}

/// PolicyType indicates the type of a policy.
class PolicyType extends $pb.ProtobufEnum {
  static const PolicyType POLICY_TYPE_UNKNOWN =
      PolicyType._(0, _omitEnumNames ? '' : 'POLICY_TYPE_UNKNOWN');
  static const PolicyType POLICY_TYPE_RESOURCE =
      PolicyType._(1, _omitEnumNames ? '' : 'POLICY_TYPE_RESOURCE');
  static const PolicyType POLICY_TYPE_STACK =
      PolicyType._(2, _omitEnumNames ? '' : 'POLICY_TYPE_STACK');

  static const $core.List<PolicyType> values = <PolicyType>[
    POLICY_TYPE_UNKNOWN,
    POLICY_TYPE_RESOURCE,
    POLICY_TYPE_STACK,
  ];

  static final $core.List<PolicyType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static PolicyType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PolicyType._(super.value, super.name);
}

/// PolicySeverity indicates the severity of a policy.
class PolicySeverity extends $pb.ProtobufEnum {
  static const PolicySeverity POLICY_SEVERITY_UNSPECIFIED =
      PolicySeverity._(0, _omitEnumNames ? '' : 'POLICY_SEVERITY_UNSPECIFIED');
  static const PolicySeverity POLICY_SEVERITY_LOW =
      PolicySeverity._(1, _omitEnumNames ? '' : 'POLICY_SEVERITY_LOW');
  static const PolicySeverity POLICY_SEVERITY_MEDIUM =
      PolicySeverity._(2, _omitEnumNames ? '' : 'POLICY_SEVERITY_MEDIUM');
  static const PolicySeverity POLICY_SEVERITY_HIGH =
      PolicySeverity._(3, _omitEnumNames ? '' : 'POLICY_SEVERITY_HIGH');
  static const PolicySeverity POLICY_SEVERITY_CRITICAL =
      PolicySeverity._(4, _omitEnumNames ? '' : 'POLICY_SEVERITY_CRITICAL');

  static const $core.List<PolicySeverity> values = <PolicySeverity>[
    POLICY_SEVERITY_UNSPECIFIED,
    POLICY_SEVERITY_LOW,
    POLICY_SEVERITY_MEDIUM,
    POLICY_SEVERITY_HIGH,
    POLICY_SEVERITY_CRITICAL,
  ];

  static final $core.List<PolicySeverity?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static PolicySeverity? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PolicySeverity._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');

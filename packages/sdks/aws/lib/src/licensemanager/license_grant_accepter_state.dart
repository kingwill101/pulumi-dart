// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LicenseGrantAccepter resources.
class LicenseGrantAccepterState {
  /// A list of the allowed operations for the grant.
  final pulumi.Input<List<String>>? allowedOperations;
  /// The ARN of the grant to accept.
  final pulumi.Input<String>? grantArn;
  /// The home region for the license.
  final pulumi.Input<String>? homeRegion;
  /// The ARN of the license for the grant.
  final pulumi.Input<String>? licenseArn;
  /// The Name of the grant.
  final pulumi.Input<String>? name;
  /// The parent ARN.
  final pulumi.Input<String>? parentArn;
  /// The target account for the grant.
  final pulumi.Input<String>? principal;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The grant status.
  final pulumi.Input<String>? status;
  /// The grant version.
  final pulumi.Input<String>? version;

  /// Creates a new [LicenseGrantAccepterState].
  /// [allowedOperations] A list of the allowed operations for the grant.
  /// [grantArn] The ARN of the grant to accept.
  /// [homeRegion] The home region for the license.
  /// [licenseArn] The ARN of the license for the grant.
  /// [name] The Name of the grant.
  /// [parentArn] The parent ARN.
  /// [principal] The target account for the grant.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] The grant status.
  /// [version] The grant version.
  LicenseGrantAccepterState({
    this.allowedOperations,
    this.grantArn,
    this.homeRegion,
    this.licenseArn,
    this.name,
    this.parentArn,
    this.principal,
    this.region,
    this.status,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOperations': ?allowedOperations,
      'grantArn': ?grantArn,
      'homeRegion': ?homeRegion,
      'licenseArn': ?licenseArn,
      'name': ?name,
      'parentArn': ?parentArn,
      'principal': ?principal,
      'region': ?region,
      'status': ?status,
      'version': ?version,
    };
  }

  factory LicenseGrantAccepterState.fromMap(Map<String, dynamic> map) {
    return LicenseGrantAccepterState(
      allowedOperations: (() { final guardedValue = map['allowedOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      grantArn: (() { final guardedValue = map['grantArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      homeRegion: (() { final guardedValue = map['homeRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseArn: (() { final guardedValue = map['licenseArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentArn: (() { final guardedValue = map['parentArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principal: (() { final guardedValue = map['principal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


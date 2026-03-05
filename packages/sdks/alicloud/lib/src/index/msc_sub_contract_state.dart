// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MscSubContract resources.
class MscSubContractState {
  /// The User's Contact Name. **Note:** The name must be 2 to 12 characters in length.
  final pulumi.Input<String>? contactName;
  /// The User's Contact Email Address.
  final pulumi.Input<String>? email;
  /// The User's Telephone.
  final pulumi.Input<String>? mobile;
  /// The User's Position. Valid values: `CEO`, `Technical Director`, `Maintenance Director`, `Project Director`,`Finance Director` and `Other`.
  ///
  /// &gt; **NOTE:** When the user creates a contact, the user should use `alicloud.getMscSubContactVerificationMessage` to receive the verification message and confirm it.
  final pulumi.Input<String>? position;

  /// Creates a new [MscSubContractState].
  /// [contactName] The User's Contact Name. **Note:** The name must be 2 to 12 characters in length.
  /// [email] The User's Contact Email Address.
  /// [mobile] The User's Telephone.
  /// [position] The User's Position. Valid values: `CEO`, `Technical Director`, `Maintenance Director`, `Project Director`,`Finance Director` and `Other`.
  MscSubContractState({
    this.contactName,
    this.email,
    this.mobile,
    this.position,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactName': ?contactName,
      'email': ?email,
      'mobile': ?mobile,
      'position': ?position,
    };
  }

  factory MscSubContractState.fromMap(Map<String, dynamic> map) {
    return MscSubContractState(
      contactName: (() { final guardedValue = map['contactName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mobile: (() { final guardedValue = map['mobile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      position: (() { final guardedValue = map['position']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


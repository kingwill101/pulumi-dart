// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_msc_sub_contract_msc_sub_contract_args_doc}
/// The set of arguments for MscSubContract.
/// {@endtemplate}
/// {@macro pulumi_index_msc_sub_contract_msc_sub_contract_args_doc}
class MscSubContractArgs {
  /// The User's Contact Name. **Note:** The name must be 2 to 12 characters in length.
  final pulumi.Input<String> contactName;
  /// The User's Contact Email Address.
  final pulumi.Input<String> email;
  /// The User's Telephone.
  final pulumi.Input<String> mobile;
  /// The User's Position. Valid values: `CEO`, `Technical Director`, `Maintenance Director`, `Project Director`,`Finance Director` and `Other`.
  ///
  /// > **NOTE:** When the user creates a contact, the user should use `alicloud.getMscSubContactVerificationMessage` to receive the verification message and confirm it.
  final pulumi.Input<String> position;

  /// Creates a new [MscSubContractArgs].
  /// [contactName] The User's Contact Name. **Note:** The name must be 2 to 12 characters in length.
  /// [email] The User's Contact Email Address.
  /// [mobile] The User's Telephone.
  /// [position] The User's Position. Valid values: `CEO`, `Technical Director`, `Maintenance Director`, `Project Director`,`Finance Director` and `Other`.
  MscSubContractArgs({
    required String contactName,
    required String email,
    required String mobile,
    required String position,
  }) :
      contactName = pulumi.Input.asInput<String>(contactName),
      email = pulumi.Input.asInput<String>(email),
      mobile = pulumi.Input.asInput<String>(mobile),
      position = pulumi.Input.asInput<String>(position);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactName': contactName,
      'email': email,
      'mobile': mobile,
      'position': position,
    };
  }

  factory MscSubContractArgs.fromMap(Map<String, dynamic> map) {
    return MscSubContractArgs(
      contactName: map['contactName'] as String,
      email: map['email'] as String,
      mobile: map['mobile'] as String,
      position: map['position'] as String,
    );
  }
}


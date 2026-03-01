// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AlternativeContact resources.
class AlternativeContactState {
  /// ID of the target account when managing member accounts. Will manage current user's account by default if omitted.
  final pulumi.Input<String>? accountId;
  /// Type of the alternate contact. Allowed values are: `BILLING`, `OPERATIONS`, `SECURITY`.
  final pulumi.Input<String>? alternateContactType;
  /// An email address for the alternate contact.
  final pulumi.Input<String>? emailAddress;
  /// Name of the alternate contact.
  final pulumi.Input<String>? name;
  /// Phone number for the alternate contact.
  final pulumi.Input<String>? phoneNumber;
  /// Title for the alternate contact.
  final pulumi.Input<String>? title;

  /// Creates a new [AlternativeContactState].
  /// [accountId] ID of the target account when managing member accounts. Will manage current user's account by default if omitted.
  /// [alternateContactType] Type of the alternate contact. Allowed values are: `BILLING`, `OPERATIONS`, `SECURITY`.
  /// [emailAddress] An email address for the alternate contact.
  /// [name] Name of the alternate contact.
  /// [phoneNumber] Phone number for the alternate contact.
  /// [title] Title for the alternate contact.
  AlternativeContactState({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? alternateContactType,
    pulumi.Output<String>? emailAddress,
    pulumi.Output<String>? name,
    pulumi.Output<String>? phoneNumber,
    pulumi.Output<String>? title,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      alternateContactType = pulumi.Input.asOptionalInput<String>(alternateContactType),
      emailAddress = pulumi.Input.asOptionalInput<String>(emailAddress),
      name = pulumi.Input.asOptionalInput<String>(name),
      phoneNumber = pulumi.Input.asOptionalInput<String>(phoneNumber),
      title = pulumi.Input.asOptionalInput<String>(title);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'alternateContactType': ?alternateContactType,
      'emailAddress': ?emailAddress,
      'name': ?name,
      'phoneNumber': ?phoneNumber,
      'title': ?title,
    };
  }

  factory AlternativeContactState.fromMap(Map<String, dynamic> map) {
    return AlternativeContactState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      alternateContactType: map['alternateContactType'] == null ? null : pulumi.Output.create<String>(map['alternateContactType'] as String),
      emailAddress: map['emailAddress'] == null ? null : pulumi.Output.create<String>(map['emailAddress'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      phoneNumber: map['phoneNumber'] == null ? null : pulumi.Output.create<String>(map['phoneNumber'] as String),
      title: map['title'] == null ? null : pulumi.Output.create<String>(map['title'] as String),
    );
  }
}


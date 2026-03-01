// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contacts_properties_contact_profile.dart';

/// {@template pulumi_orbital_contact_args_doc}
/// The set of arguments for Contact.
/// {@endtemplate}
/// {@macro pulumi_orbital_contact_args_doc}
class ContactArgs {
  /// Contact name.
  final pulumi.Input<String>? contactName;
  /// The reference to the contact profile resource.
  final pulumi.Input<ContactsPropertiesContactProfile> contactProfile;
  /// Azure Ground Station name.
  final pulumi.Input<String> groundStationName;
  /// Reservation end time of a contact (ISO 8601 UTC standard).
  final pulumi.Input<String> reservationEndTime;
  /// Reservation start time of a contact (ISO 8601 UTC standard).
  final pulumi.Input<String> reservationStartTime;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Spacecraft ID.
  final pulumi.Input<String> spacecraftName;

  /// Creates a new [ContactArgs].
  /// [contactName] Contact name.
  /// [contactProfile] The reference to the contact profile resource.
  /// [groundStationName] Azure Ground Station name.
  /// [reservationEndTime] Reservation end time of a contact (ISO 8601 UTC standard).
  /// [reservationStartTime] Reservation start time of a contact (ISO 8601 UTC standard).
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [spacecraftName] Spacecraft ID.
  ContactArgs({
    String? contactName,
    required ContactsPropertiesContactProfile contactProfile,
    required String groundStationName,
    required String reservationEndTime,
    required String reservationStartTime,
    required String resourceGroupName,
    required String spacecraftName,
  }) :
      contactName = pulumi.Input.asOptionalInput<String>(contactName),
      contactProfile = pulumi.Input.asInput<ContactsPropertiesContactProfile>(contactProfile),
      groundStationName = pulumi.Input.asInput<String>(groundStationName),
      reservationEndTime = pulumi.Input.asInput<String>(reservationEndTime),
      reservationStartTime = pulumi.Input.asInput<String>(reservationStartTime),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      spacecraftName = pulumi.Input.asInput<String>(spacecraftName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactName': ?contactName,
      'contactProfile': pulumi.Input.mapInputValue<ContactsPropertiesContactProfile, Map<String, dynamic>>(contactProfile, (value) => value.toMap()),
      'groundStationName': groundStationName,
      'reservationEndTime': reservationEndTime,
      'reservationStartTime': reservationStartTime,
      'resourceGroupName': resourceGroupName,
      'spacecraftName': spacecraftName,
    };
  }

  factory ContactArgs.fromMap(Map<String, dynamic> map) {
    return ContactArgs(
      contactName: map['contactName'] == null ? null : map['contactName'] as String,
      contactProfile: ContactsPropertiesContactProfile.fromMap((map['contactProfile'] as Map).cast<String, dynamic>()),
      groundStationName: map['groundStationName'] as String,
      reservationEndTime: map['reservationEndTime'] as String,
      reservationStartTime: map['reservationStartTime'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      spacecraftName: map['spacecraftName'] as String,
    );
  }
}


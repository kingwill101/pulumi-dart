// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../sac_attachment_symantec_options/sac_attachment_symantec_options.dart';

/// The set of arguments for SacAttachment.
class SacAttachmentArgs {
  /// Case-insensitive ISO-3166 alpha-2 country code used for localization. Only valid for Symantec attachments.
  final Input<String>? country;

  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location of the SACAttachment resource. eg us-central1
  final Input<String> location;

  /// Identifier. Resource name
  final Input<String>? name;

  /// NCC Gateway associated with the attachment. This can be input as an ID or a full resource name.
  final Input<String> nccGateway;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// SAC Realm which owns the attachment. This can be input as an ID or a full resource name.
  final Input<String> sacRealm;

  /// Configuration required for Symantec attachments.
  /// Structure is documented below.
  final Input<SacAttachmentSymantecOptions>? symantecOptions;

  /// Case-sensitive tzinfo identifier used for localization. Only valid for Symantec attachments.
  final Input<String>? timeZone;

  SacAttachmentArgs({
    this.country,
    this.labels,
    required this.location,
    this.name,
    required this.nccGateway,
    this.project,
    required this.sacRealm,
    this.symantecOptions,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final countryValue = country;
    if (countryValue != null) {
      map['country'] = countryValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['nccGateway'] = nccGateway;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sacRealm'] = sacRealm;
    final symantecOptionsValue = symantecOptions;
    if (symantecOptionsValue != null) {
      map['symantecOptions'] = Input.mapOptionalInputValue<
          SacAttachmentSymantecOptions,
          Map<String, dynamic>>(symantecOptionsValue, (value) => value.toMap());
    }
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue;
    }
    return map;
  }

  factory SacAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return SacAttachmentArgs(
      country: Input.asOptionalInput<String>(map['country']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      nccGateway: Input.asInput<String>(map['nccGateway']),
      project: Input.asOptionalInput<String>(map['project']),
      sacRealm: Input.asInput<String>(map['sacRealm']),
      symantecOptions: Input.asOptionalInput<SacAttachmentSymantecOptions>(
          map['symantecOptions']),
      timeZone: Input.asOptionalInput<String>(map['timeZone']),
    );
  }
}

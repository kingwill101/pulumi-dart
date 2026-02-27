// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for GlobalAddress.
class GlobalAddressArgs {
  /// The IP address or beginning of the address range represented by this
  /// resource. This can be supplied as an input to reserve a specific
  /// address or omitted to allow GCP to choose a valid one for you.
  final pulumi.Input<String>? address;

  /// The type of the address to reserve.
  /// * EXTERNAL indicates public/external single IP address.
  /// * INTERNAL indicates internal IP ranges belonging to some network.
  /// Default value is `EXTERNAL`.
  /// Possible values are: `EXTERNAL`, `INTERNAL`.
  final pulumi.Input<String>? addressType;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// The IP Version that will be used by this address. The default value is `IPV4`.
  /// Possible values are: `IPV4`, `IPV6`.
  final pulumi.Input<String>? ipVersion;

  /// Labels to apply to this address.  A list of key->value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The URL of the network in which to reserve the IP range. The IP range
  /// must be in RFC1918 space. The network cannot be deleted if there are
  /// any reserved IP ranges referring to it.
  /// This should only be set when using an Internal address.
  final pulumi.Input<String>? network;

  /// The prefix length of the IP range. If not present, it means the
  /// address field is a single IP address.
  /// This field is not applicable to addresses with addressType=INTERNAL
  /// when purpose=PRIVATE_SERVICE_CONNECT
  final pulumi.Input<int>? prefixLength;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The purpose of the resource. Possible values include:
  /// * VPC_PEERING - for peer networks
  /// * PRIVATE_SERVICE_CONNECT - for  Private Service Connect networks
  final pulumi.Input<String>? purpose;

  GlobalAddressArgs({
    this.address,
    this.addressType,
    this.description,
    this.ipVersion,
    this.labels,
    this.name,
    this.network,
    this.prefixLength,
    this.project,
    this.purpose,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressValue = address;
    if (addressValue != null) {
      map['address'] = addressValue;
    }
    final addressTypeValue = addressType;
    if (addressTypeValue != null) {
      map['addressType'] = addressTypeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final ipVersionValue = ipVersion;
    if (ipVersionValue != null) {
      map['ipVersion'] = ipVersionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final prefixLengthValue = prefixLength;
    if (prefixLengthValue != null) {
      map['prefixLength'] = prefixLengthValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final purposeValue = purpose;
    if (purposeValue != null) {
      map['purpose'] = purposeValue;
    }
    return map;
  }

  factory GlobalAddressArgs.fromMap(Map<String, dynamic> map) {
    return GlobalAddressArgs(
      address: pulumi.Input.asOptionalInput<String>(map['address']),
      addressType: pulumi.Input.asOptionalInput<String>(map['addressType']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      ipVersion: pulumi.Input.asOptionalInput<String>(map['ipVersion']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      prefixLength: pulumi.Input.asOptionalInput<int>(map['prefixLength']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      purpose: pulumi.Input.asOptionalInput<String>(map['purpose']),
    );
  }
}

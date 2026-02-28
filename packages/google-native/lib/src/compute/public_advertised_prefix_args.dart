// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_advertised_prefix_pdp_scope.dart';
import 'public_advertised_prefix_status.dart';

/// {@template pulumi_compute_alpha_public_advertised_prefix_args_doc}
/// The set of arguments for PublicAdvertisedPrefix.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_public_advertised_prefix_args_doc}
class PublicAdvertisedPrefixArgs {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// The address to be used for reverse DNS verification.
  final pulumi.Input<String>? dnsVerificationIp;

  /// The address range, in CIDR format, represented by this public advertised prefix.
  final pulumi.Input<String>? ipCidrRange;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// Specifies how child public delegated prefix will be scoped. It could be one of following values: - `REGIONAL`: The public delegated prefix is regional only. The provisioning will take a few minutes. - `GLOBAL`: The public delegated prefix is global only. The provisioning will take ~4 weeks. - `GLOBAL_AND_REGIONAL` [output only]: The public delegated prefixes is BYOIP V1 legacy prefix. This is output only value and no longer supported in BYOIP V2.
  final pulumi.Input<PublicAdvertisedPrefixPdpScope>? pdpScope;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// The status of the public advertised prefix. Possible values include: - `INITIAL`: RPKI validation is complete. - `PTR_CONFIGURED`: User has configured the PTR. - `VALIDATED`: Reverse DNS lookup is successful. - `REVERSE_DNS_LOOKUP_FAILED`: Reverse DNS lookup failed. - `PREFIX_CONFIGURATION_IN_PROGRESS`: The prefix is being configured. - `PREFIX_CONFIGURATION_COMPLETE`: The prefix is fully configured. - `PREFIX_REMOVAL_IN_PROGRESS`: The prefix is being removed.
  final pulumi.Input<PublicAdvertisedPrefixStatus>? status;

  /// Creates a new [PublicAdvertisedPrefixArgs].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [dnsVerificationIp] The address to be used for reverse DNS verification.
  /// [ipCidrRange] The address range, in CIDR format, represented by this public advertised prefix.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [pdpScope] Specifies how child public delegated prefix will be scoped. It could be one of following values: - `REGIONAL`: The public delegated prefix is regional only. The provisioning will take a few minutes. - `GLOBAL`: The public delegated prefix is global only. The provisioning will take ~4 weeks. - `GLOBAL_AND_REGIONAL` [output only]: The public delegated prefixes is BYOIP V1 legacy prefix. This is output only value and no longer supported in BYOIP V2.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [status] The status of the public advertised prefix. Possible values include: - `INITIAL`: RPKI validation is complete. - `PTR_CONFIGURED`: User has configured the PTR. - `VALIDATED`: Reverse DNS lookup is successful. - `REVERSE_DNS_LOOKUP_FAILED`: Reverse DNS lookup failed. - `PREFIX_CONFIGURATION_IN_PROGRESS`: The prefix is being configured. - `PREFIX_CONFIGURATION_COMPLETE`: The prefix is fully configured. - `PREFIX_REMOVAL_IN_PROGRESS`: The prefix is being removed.
  PublicAdvertisedPrefixArgs({
    String? description,
    String? dnsVerificationIp,
    String? ipCidrRange,
    String? name,
    PublicAdvertisedPrefixPdpScope? pdpScope,
    String? project,
    String? requestId,
    PublicAdvertisedPrefixStatus? status,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        dnsVerificationIp =
            pulumi.Input.asOptionalInput<String>(dnsVerificationIp),
        ipCidrRange = pulumi.Input.asOptionalInput<String>(ipCidrRange),
        name = pulumi.Input.asOptionalInput<String>(name),
        pdpScope = pulumi.Input.asOptionalInput<PublicAdvertisedPrefixPdpScope>(
            pdpScope),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        status =
            pulumi.Input.asOptionalInput<PublicAdvertisedPrefixStatus>(status);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final dnsVerificationIpValue = dnsVerificationIp;
    if (dnsVerificationIpValue != null) {
      map['dnsVerificationIp'] = dnsVerificationIpValue;
    }
    final ipCidrRangeValue = ipCidrRange;
    if (ipCidrRangeValue != null) {
      map['ipCidrRange'] = ipCidrRangeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pdpScopeValue = pdpScope;
    if (pdpScopeValue != null) {
      map['pdpScope'] = pulumi.Input.mapOptionalInputValue<
          PublicAdvertisedPrefixPdpScope,
          String>(pdpScopeValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = pulumi.Input.mapOptionalInputValue<
          PublicAdvertisedPrefixStatus,
          String>(statusValue, (value) => value.value);
    }
    return map;
  }

  factory PublicAdvertisedPrefixArgs.fromMap(Map<String, dynamic> map) {
    return PublicAdvertisedPrefixArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      dnsVerificationIp: map['dnsVerificationIp'] == null
          ? null
          : map['dnsVerificationIp'] as String,
      ipCidrRange:
          map['ipCidrRange'] == null ? null : map['ipCidrRange'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      pdpScope: map['pdpScope'] == null
          ? null
          : PublicAdvertisedPrefixPdpScope.fromValue(map['pdpScope'] as String),
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      status: map['status'] == null
          ? null
          : PublicAdvertisedPrefixStatus.fromValue(map['status'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_industrial_pid_organizations_organization.dart';

/// Result data returned by getIndustrialPidOrganizations.
class GetIndustrialPidOrganizationsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Pid Organization names.
  final List<String> names;
  /// A list of Brain Industrial Pid Organizations. Each element contains the following attributes:
  final List<GetIndustrialPidOrganizationsOrganization> organizations;
  final String? outputFile;
  final String? parentOrganizationId;

  /// Creates a new [GetIndustrialPidOrganizationsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Pid Organization names.
  /// [organizations] A list of Brain Industrial Pid Organizations. Each element contains the following attributes:
  /// [outputFile] Optional.
  /// [parentOrganizationId] Optional.
  const GetIndustrialPidOrganizationsResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    required this.organizations,
    this.outputFile,
    this.parentOrganizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'organizations': pulumi.Input.encodeList<GetIndustrialPidOrganizationsOrganization, Map<String, dynamic>>(organizations, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'parentOrganizationId': ?parentOrganizationId,
    };
  }

  factory GetIndustrialPidOrganizationsResult.fromMap(Map<String, dynamic> map) {
    return GetIndustrialPidOrganizationsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      organizations: pulumi.Input.decodeList<GetIndustrialPidOrganizationsOrganization>(map['organizations']!, (value) => GetIndustrialPidOrganizationsOrganization.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentOrganizationId: (() { final guardedValue = map['parentOrganizationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}


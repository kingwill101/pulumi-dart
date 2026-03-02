// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aaaa_record_response.dart';
import 'arecord_response.dart';
import 'caa_record_response.dart';
import 'cname_record_response.dart';
import 'ds_record_response.dart';
import 'mx_record_response.dart';
import 'naptr_record_response.dart';
import 'ns_record_response.dart';
import 'ptr_record_response.dart';
import 'soa_record_response.dart';
import 'srv_record_response.dart';
import 'sub_resource_response.dart';
import 'system_data_response.dart';
import 'tlsa_record_response.dart';
import 'txt_record_response.dart';

/// Result data returned by getRecordSet.
class GetRecordSetResult {
  /// The list of A records in the record set.
  final List<ARecordResponse>? aRecords;
  /// The list of AAAA records in the record set.
  final List<AaaaRecordResponse>? aaaaRecords;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The list of CAA records in the record set.
  final List<CaaRecordResponse>? caaRecords;
  /// The CNAME record in the  record set.
  final CnameRecordResponse? cnameRecord;
  /// The list of DS records in the record set.
  final List<DsRecordResponse>? dsRecords;
  /// The etag of the record set.
  final String? etag;
  /// Fully qualified domain name of the record set.
  final String fqdn;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The metadata attached to the record set.
  final Map<String, String>? metadata;
  /// The list of MX records in the record set.
  final List<MxRecordResponse>? mxRecords;
  /// The name of the resource
  final String name;
  /// The list of NAPTR records in the record set.
  final List<NaptrRecordResponse>? naptrRecords;
  /// The list of NS records in the record set.
  final List<NsRecordResponse>? nsRecords;
  /// provisioning State of the record set.
  final String provisioningState;
  /// The list of PTR records in the record set.
  final List<PtrRecordResponse>? ptrRecords;
  /// The SOA record in the record set.
  final SoaRecordResponse? soaRecord;
  /// The list of SRV records in the record set.
  final List<SrvRecordResponse>? srvRecords;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// A reference to an azure resource from where the dns resource value is taken.
  final SubResourceResponse? targetResource;
  /// The list of TLSA records in the record set.
  final List<TlsaRecordResponse>? tlsaRecords;
  /// A reference to an azure traffic manager profile resource from where the dns resource value is taken.
  final SubResourceResponse? trafficManagementProfile;
  /// The TTL (time-to-live) of the records in the record set.
  final double? ttl;
  /// The list of TXT records in the record set.
  final List<TxtRecordResponse>? txtRecords;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetRecordSetResult].
  /// [aRecords] The list of A records in the record set.
  /// [aaaaRecords] The list of AAAA records in the record set.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [caaRecords] The list of CAA records in the record set.
  /// [cnameRecord] The CNAME record in the  record set.
  /// [dsRecords] The list of DS records in the record set.
  /// [etag] The etag of the record set.
  /// [fqdn] Fully qualified domain name of the record set.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [metadata] The metadata attached to the record set.
  /// [mxRecords] The list of MX records in the record set.
  /// [name] The name of the resource
  /// [naptrRecords] The list of NAPTR records in the record set.
  /// [nsRecords] The list of NS records in the record set.
  /// [provisioningState] provisioning State of the record set.
  /// [ptrRecords] The list of PTR records in the record set.
  /// [soaRecord] The SOA record in the record set.
  /// [srvRecords] The list of SRV records in the record set.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [targetResource] A reference to an azure resource from where the dns resource value is taken.
  /// [tlsaRecords] The list of TLSA records in the record set.
  /// [trafficManagementProfile] A reference to an azure traffic manager profile resource from where the dns resource value is taken.
  /// [ttl] The TTL (time-to-live) of the records in the record set.
  /// [txtRecords] The list of TXT records in the record set.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetRecordSetResult({
    this.aRecords,
    this.aaaaRecords,
    required this.azureApiVersion,
    this.caaRecords,
    this.cnameRecord,
    this.dsRecords,
    this.etag,
    required this.fqdn,
    required this.id,
    this.metadata,
    this.mxRecords,
    required this.name,
    this.naptrRecords,
    this.nsRecords,
    required this.provisioningState,
    this.ptrRecords,
    this.soaRecord,
    this.srvRecords,
    required this.systemData,
    this.targetResource,
    this.tlsaRecords,
    this.trafficManagementProfile,
    this.ttl,
    this.txtRecords,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aRecords': ?aRecords == null ? null : pulumi.Input.encodeList<ARecordResponse, Map<String, dynamic>>(aRecords!, (value) => value.toMap()),
      'aaaaRecords': ?aaaaRecords == null ? null : pulumi.Input.encodeList<AaaaRecordResponse, Map<String, dynamic>>(aaaaRecords!, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'caaRecords': ?caaRecords == null ? null : pulumi.Input.encodeList<CaaRecordResponse, Map<String, dynamic>>(caaRecords!, (value) => value.toMap()),
      'cnameRecord': ?cnameRecord == null ? null : cnameRecord!.toMap(),
      'dsRecords': ?dsRecords == null ? null : pulumi.Input.encodeList<DsRecordResponse, Map<String, dynamic>>(dsRecords!, (value) => value.toMap()),
      'etag': ?etag,
      'fqdn': fqdn,
      'id': id,
      'metadata': ?metadata,
      'mxRecords': ?mxRecords == null ? null : pulumi.Input.encodeList<MxRecordResponse, Map<String, dynamic>>(mxRecords!, (value) => value.toMap()),
      'name': name,
      'naptrRecords': ?naptrRecords == null ? null : pulumi.Input.encodeList<NaptrRecordResponse, Map<String, dynamic>>(naptrRecords!, (value) => value.toMap()),
      'nsRecords': ?nsRecords == null ? null : pulumi.Input.encodeList<NsRecordResponse, Map<String, dynamic>>(nsRecords!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'ptrRecords': ?ptrRecords == null ? null : pulumi.Input.encodeList<PtrRecordResponse, Map<String, dynamic>>(ptrRecords!, (value) => value.toMap()),
      'soaRecord': ?soaRecord == null ? null : soaRecord!.toMap(),
      'srvRecords': ?srvRecords == null ? null : pulumi.Input.encodeList<SrvRecordResponse, Map<String, dynamic>>(srvRecords!, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'targetResource': ?targetResource == null ? null : targetResource!.toMap(),
      'tlsaRecords': ?tlsaRecords == null ? null : pulumi.Input.encodeList<TlsaRecordResponse, Map<String, dynamic>>(tlsaRecords!, (value) => value.toMap()),
      'trafficManagementProfile': ?trafficManagementProfile == null ? null : trafficManagementProfile!.toMap(),
      'ttl': ?ttl,
      'txtRecords': ?txtRecords == null ? null : pulumi.Input.encodeList<TxtRecordResponse, Map<String, dynamic>>(txtRecords!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetRecordSetResult.fromMap(Map<String, dynamic> map) {
    return GetRecordSetResult(
      aRecords: map['aRecords'] == null ? null : pulumi.Input.decodeList<ARecordResponse>(map['aRecords']!, (value) => ARecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      aaaaRecords: map['aaaaRecords'] == null ? null : pulumi.Input.decodeList<AaaaRecordResponse>(map['aaaaRecords']!, (value) => AaaaRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      caaRecords: map['caaRecords'] == null ? null : pulumi.Input.decodeList<CaaRecordResponse>(map['caaRecords']!, (value) => CaaRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      cnameRecord: map['cnameRecord'] == null ? null : CnameRecordResponse.fromMap((map['cnameRecord']! as Map).cast<String, dynamic>()),
      dsRecords: map['dsRecords'] == null ? null : pulumi.Input.decodeList<DsRecordResponse>(map['dsRecords']!, (value) => DsRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : map['etag']! as String,
      fqdn: map['fqdn'] as String,
      id: map['id'] as String,
      metadata: map['metadata'] == null ? null : (map['metadata']! as Map).cast<String, String>(),
      mxRecords: map['mxRecords'] == null ? null : pulumi.Input.decodeList<MxRecordResponse>(map['mxRecords']!, (value) => MxRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      naptrRecords: map['naptrRecords'] == null ? null : pulumi.Input.decodeList<NaptrRecordResponse>(map['naptrRecords']!, (value) => NaptrRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      nsRecords: map['nsRecords'] == null ? null : pulumi.Input.decodeList<NsRecordResponse>(map['nsRecords']!, (value) => NsRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      ptrRecords: map['ptrRecords'] == null ? null : pulumi.Input.decodeList<PtrRecordResponse>(map['ptrRecords']!, (value) => PtrRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      soaRecord: map['soaRecord'] == null ? null : SoaRecordResponse.fromMap((map['soaRecord']! as Map).cast<String, dynamic>()),
      srvRecords: map['srvRecords'] == null ? null : pulumi.Input.decodeList<SrvRecordResponse>(map['srvRecords']!, (value) => SrvRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      targetResource: map['targetResource'] == null ? null : SubResourceResponse.fromMap((map['targetResource']! as Map).cast<String, dynamic>()),
      tlsaRecords: map['tlsaRecords'] == null ? null : pulumi.Input.decodeList<TlsaRecordResponse>(map['tlsaRecords']!, (value) => TlsaRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      trafficManagementProfile: map['trafficManagementProfile'] == null ? null : SubResourceResponse.fromMap((map['trafficManagementProfile']! as Map).cast<String, dynamic>()),
      ttl: map['ttl'] == null ? null : map['ttl']! as double,
      txtRecords: map['txtRecords'] == null ? null : pulumi.Input.decodeList<TxtRecordResponse>(map['txtRecords']!, (value) => TxtRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}


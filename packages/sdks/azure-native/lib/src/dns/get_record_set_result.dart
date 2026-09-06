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
  final String? azureApiVersion;
  /// The list of CAA records in the record set.
  final List<CaaRecordResponse>? caaRecords;
  /// The CNAME record in the  record set.
  final CnameRecordResponse? cnameRecord;
  /// The list of DS records in the record set.
  final List<DsRecordResponse>? dsRecords;
  /// The etag of the record set.
  final String? etag;
  /// Fully qualified domain name of the record set.
  final String? fqdn;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The metadata attached to the record set.
  final Map<String, String>? metadata;
  /// The list of MX records in the record set.
  final List<MxRecordResponse>? mxRecords;
  /// The name of the resource
  final String? name;
  /// The list of NAPTR records in the record set.
  final List<NaptrRecordResponse>? naptrRecords;
  /// The list of NS records in the record set.
  final List<NsRecordResponse>? nsRecords;
  /// provisioning State of the record set.
  final String? provisioningState;
  /// The list of PTR records in the record set.
  final List<PtrRecordResponse>? ptrRecords;
  /// The SOA record in the record set.
  final SoaRecordResponse? soaRecord;
  /// The list of SRV records in the record set.
  final List<SrvRecordResponse>? srvRecords;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
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
  final String? type;

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
  const GetRecordSetResult({
    this.aRecords,
    this.aaaaRecords,
    this.azureApiVersion,
    this.caaRecords,
    this.cnameRecord,
    this.dsRecords,
    this.etag,
    this.fqdn,
    this.id,
    this.metadata,
    this.mxRecords,
    this.name,
    this.naptrRecords,
    this.nsRecords,
    this.provisioningState,
    this.ptrRecords,
    this.soaRecord,
    this.srvRecords,
    this.systemData,
    this.targetResource,
    this.tlsaRecords,
    this.trafficManagementProfile,
    this.ttl,
    this.txtRecords,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aRecords': ?(() { final guardedValue = aRecords; if (guardedValue == null) return null; return pulumi.Input.encodeList<ARecordResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'aaaaRecords': ?(() { final guardedValue = aaaaRecords; if (guardedValue == null) return null; return pulumi.Input.encodeList<AaaaRecordResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': ?azureApiVersion,
      'caaRecords': ?(() { final guardedValue = caaRecords; if (guardedValue == null) return null; return pulumi.Input.encodeList<CaaRecordResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'cnameRecord': ?cnameRecord?.toMap(),
      'dsRecords': ?(() { final guardedValue = dsRecords; if (guardedValue == null) return null; return pulumi.Input.encodeList<DsRecordResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'etag': ?etag,
      'fqdn': ?fqdn,
      'id': ?id,
      'metadata': ?metadata,
      'mxRecords': ?(() { final guardedValue = mxRecords; if (guardedValue == null) return null; return pulumi.Input.encodeList<MxRecordResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'naptrRecords': ?(() { final guardedValue = naptrRecords; if (guardedValue == null) return null; return pulumi.Input.encodeList<NaptrRecordResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'nsRecords': ?(() { final guardedValue = nsRecords; if (guardedValue == null) return null; return pulumi.Input.encodeList<NsRecordResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'ptrRecords': ?(() { final guardedValue = ptrRecords; if (guardedValue == null) return null; return pulumi.Input.encodeList<PtrRecordResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'soaRecord': ?soaRecord?.toMap(),
      'srvRecords': ?(() { final guardedValue = srvRecords; if (guardedValue == null) return null; return pulumi.Input.encodeList<SrvRecordResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'targetResource': ?targetResource?.toMap(),
      'tlsaRecords': ?(() { final guardedValue = tlsaRecords; if (guardedValue == null) return null; return pulumi.Input.encodeList<TlsaRecordResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'trafficManagementProfile': ?trafficManagementProfile?.toMap(),
      'ttl': ?ttl,
      'txtRecords': ?(() { final guardedValue = txtRecords; if (guardedValue == null) return null; return pulumi.Input.encodeList<TxtRecordResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
    };
  }

  factory GetRecordSetResult.fromMap(Map<String, dynamic> map) {
    return GetRecordSetResult(
      aRecords: (() { final guardedValue = map['aRecords']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ARecordResponse>(guardedValue, (value) => ARecordResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      aaaaRecords: (() { final guardedValue = map['aaaaRecords']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AaaaRecordResponse>(guardedValue, (value) => AaaaRecordResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      caaRecords: (() { final guardedValue = map['caaRecords']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CaaRecordResponse>(guardedValue, (value) => CaaRecordResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      cnameRecord: (() { final guardedValue = map['cnameRecord']; if (guardedValue == null) return null; return CnameRecordResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dsRecords: (() { final guardedValue = map['dsRecords']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DsRecordResponse>(guardedValue, (value) => DsRecordResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      mxRecords: (() { final guardedValue = map['mxRecords']; if (guardedValue == null) return null; return pulumi.Input.decodeList<MxRecordResponse>(guardedValue, (value) => MxRecordResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      naptrRecords: (() { final guardedValue = map['naptrRecords']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NaptrRecordResponse>(guardedValue, (value) => NaptrRecordResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      nsRecords: (() { final guardedValue = map['nsRecords']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NsRecordResponse>(guardedValue, (value) => NsRecordResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ptrRecords: (() { final guardedValue = map['ptrRecords']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PtrRecordResponse>(guardedValue, (value) => PtrRecordResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      soaRecord: (() { final guardedValue = map['soaRecord']; if (guardedValue == null) return null; return SoaRecordResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      srvRecords: (() { final guardedValue = map['srvRecords']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SrvRecordResponse>(guardedValue, (value) => SrvRecordResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      targetResource: (() { final guardedValue = map['targetResource']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tlsaRecords: (() { final guardedValue = map['tlsaRecords']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TlsaRecordResponse>(guardedValue, (value) => TlsaRecordResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      trafficManagementProfile: (() { final guardedValue = map['trafficManagementProfile']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      txtRecords: (() { final guardedValue = map['txtRecords']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TxtRecordResponse>(guardedValue, (value) => TxtRecordResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

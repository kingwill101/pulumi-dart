// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aaaa_record.dart';
import 'arecord.dart';
import 'caa_record.dart';
import 'cname_record.dart';
import 'ds_record.dart';
import 'mx_record.dart';
import 'naptr_record.dart';
import 'ns_record.dart';
import 'ptr_record.dart';
import 'soa_record.dart';
import 'srv_record.dart';
import 'sub_resource.dart';
import 'tlsa_record.dart';
import 'txt_record.dart';

/// {@template pulumi_dns_record_set_args_doc}
/// The set of arguments for RecordSet.
/// {@endtemplate}
/// {@macro pulumi_dns_record_set_args_doc}
class RecordSetArgs {
  /// The list of A records in the record set.
  final pulumi.Input<List<ARecord>>? aRecords;
  /// The list of AAAA records in the record set.
  final pulumi.Input<List<AaaaRecord>>? aaaaRecords;
  /// The list of CAA records in the record set.
  final pulumi.Input<List<CaaRecord>>? caaRecords;
  /// The CNAME record in the  record set.
  final pulumi.Input<CnameRecord>? cnameRecord;
  /// The list of DS records in the record set.
  final pulumi.Input<List<DsRecord>>? dsRecords;
  /// The metadata attached to the record set.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The list of MX records in the record set.
  final pulumi.Input<List<MxRecord>>? mxRecords;
  /// The list of NAPTR records in the record set.
  final pulumi.Input<List<NaptrRecord>>? naptrRecords;
  /// The list of NS records in the record set.
  final pulumi.Input<List<NsRecord>>? nsRecords;
  /// The list of PTR records in the record set.
  final pulumi.Input<List<PtrRecord>>? ptrRecords;
  /// The type of DNS record in this record set.
  final pulumi.Input<String> recordType;
  /// The name of the record set, relative to the name of the zone.
  final pulumi.Input<String>? relativeRecordSetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The SOA record in the record set.
  final pulumi.Input<SoaRecord>? soaRecord;
  /// The list of SRV records in the record set.
  final pulumi.Input<List<SrvRecord>>? srvRecords;
  /// A reference to an azure resource from where the dns resource value is taken.
  final pulumi.Input<SubResource>? targetResource;
  /// The list of TLSA records in the record set.
  final pulumi.Input<List<TlsaRecord>>? tlsaRecords;
  /// A reference to an azure traffic manager profile resource from where the dns resource value is taken.
  final pulumi.Input<SubResource>? trafficManagementProfile;
  /// The TTL (time-to-live) of the records in the record set.
  final pulumi.Input<double>? ttl;
  /// The list of TXT records in the record set.
  final pulumi.Input<List<TxtRecord>>? txtRecords;
  /// The name of the DNS zone (without a terminating dot).
  final pulumi.Input<String> zoneName;

  /// Creates a new [RecordSetArgs].
  /// [aRecords] The list of A records in the record set.
  /// [aaaaRecords] The list of AAAA records in the record set.
  /// [caaRecords] The list of CAA records in the record set.
  /// [cnameRecord] The CNAME record in the  record set.
  /// [dsRecords] The list of DS records in the record set.
  /// [metadata] The metadata attached to the record set.
  /// [mxRecords] The list of MX records in the record set.
  /// [naptrRecords] The list of NAPTR records in the record set.
  /// [nsRecords] The list of NS records in the record set.
  /// [ptrRecords] The list of PTR records in the record set.
  /// [recordType] The type of DNS record in this record set.
  /// [relativeRecordSetName] The name of the record set, relative to the name of the zone.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [soaRecord] The SOA record in the record set.
  /// [srvRecords] The list of SRV records in the record set.
  /// [targetResource] A reference to an azure resource from where the dns resource value is taken.
  /// [tlsaRecords] The list of TLSA records in the record set.
  /// [trafficManagementProfile] A reference to an azure traffic manager profile resource from where the dns resource value is taken.
  /// [ttl] The TTL (time-to-live) of the records in the record set.
  /// [txtRecords] The list of TXT records in the record set.
  /// [zoneName] The name of the DNS zone (without a terminating dot).
  const RecordSetArgs({
    this.aRecords,
    this.aaaaRecords,
    this.caaRecords,
    this.cnameRecord,
    this.dsRecords,
    this.metadata,
    this.mxRecords,
    this.naptrRecords,
    this.nsRecords,
    this.ptrRecords,
    required this.recordType,
    this.relativeRecordSetName,
    required this.resourceGroupName,
    this.soaRecord,
    this.srvRecords,
    this.targetResource,
    this.tlsaRecords,
    this.trafficManagementProfile,
    this.ttl,
    this.txtRecords,
    required this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aRecords': ?pulumi.Input.mapOptionalInputValue<List<ARecord>, List<Map<String, dynamic>>>(aRecords, (value) => pulumi.Input.encodeList<ARecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aaaaRecords': ?pulumi.Input.mapOptionalInputValue<List<AaaaRecord>, List<Map<String, dynamic>>>(aaaaRecords, (value) => pulumi.Input.encodeList<AaaaRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'caaRecords': ?pulumi.Input.mapOptionalInputValue<List<CaaRecord>, List<Map<String, dynamic>>>(caaRecords, (value) => pulumi.Input.encodeList<CaaRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cnameRecord': ?pulumi.Input.mapOptionalInputValue<CnameRecord, Map<String, dynamic>>(cnameRecord, (value) => value.toMap()),
      'dsRecords': ?pulumi.Input.mapOptionalInputValue<List<DsRecord>, List<Map<String, dynamic>>>(dsRecords, (value) => pulumi.Input.encodeList<DsRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadata': ?metadata,
      'mxRecords': ?pulumi.Input.mapOptionalInputValue<List<MxRecord>, List<Map<String, dynamic>>>(mxRecords, (value) => pulumi.Input.encodeList<MxRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'naptrRecords': ?pulumi.Input.mapOptionalInputValue<List<NaptrRecord>, List<Map<String, dynamic>>>(naptrRecords, (value) => pulumi.Input.encodeList<NaptrRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nsRecords': ?pulumi.Input.mapOptionalInputValue<List<NsRecord>, List<Map<String, dynamic>>>(nsRecords, (value) => pulumi.Input.encodeList<NsRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ptrRecords': ?pulumi.Input.mapOptionalInputValue<List<PtrRecord>, List<Map<String, dynamic>>>(ptrRecords, (value) => pulumi.Input.encodeList<PtrRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recordType': recordType,
      'relativeRecordSetName': ?relativeRecordSetName,
      'resourceGroupName': resourceGroupName,
      'soaRecord': ?pulumi.Input.mapOptionalInputValue<SoaRecord, Map<String, dynamic>>(soaRecord, (value) => value.toMap()),
      'srvRecords': ?pulumi.Input.mapOptionalInputValue<List<SrvRecord>, List<Map<String, dynamic>>>(srvRecords, (value) => pulumi.Input.encodeList<SrvRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetResource': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(targetResource, (value) => value.toMap()),
      'tlsaRecords': ?pulumi.Input.mapOptionalInputValue<List<TlsaRecord>, List<Map<String, dynamic>>>(tlsaRecords, (value) => pulumi.Input.encodeList<TlsaRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trafficManagementProfile': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(trafficManagementProfile, (value) => value.toMap()),
      'ttl': ?ttl,
      'txtRecords': ?pulumi.Input.mapOptionalInputValue<List<TxtRecord>, List<Map<String, dynamic>>>(txtRecords, (value) => pulumi.Input.encodeList<TxtRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneName': zoneName,
    };
  }

  factory RecordSetArgs.fromMap(Map<String, dynamic> map) {
    return RecordSetArgs(
      aRecords: (() { final guardedValue = map['aRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ARecord>(guardedValue, (value) => ARecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      aaaaRecords: (() { final guardedValue = map['aaaaRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AaaaRecord>(guardedValue, (value) => AaaaRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      caaRecords: (() { final guardedValue = map['caaRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CaaRecord>(guardedValue, (value) => CaaRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cnameRecord: (() { final guardedValue = map['cnameRecord']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CnameRecord.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dsRecords: (() { final guardedValue = map['dsRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DsRecord>(guardedValue, (value) => DsRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      mxRecords: (() { final guardedValue = map['mxRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MxRecord>(guardedValue, (value) => MxRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      naptrRecords: (() { final guardedValue = map['naptrRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NaptrRecord>(guardedValue, (value) => NaptrRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nsRecords: (() { final guardedValue = map['nsRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NsRecord>(guardedValue, (value) => NsRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ptrRecords: (() { final guardedValue = map['ptrRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PtrRecord>(guardedValue, (value) => PtrRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      recordType: pulumi.Input.fromValue(map['recordType'] as String),
      relativeRecordSetName: (() { final guardedValue = map['relativeRecordSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      soaRecord: (() { final guardedValue = map['soaRecord']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SoaRecord.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      srvRecords: (() { final guardedValue = map['srvRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SrvRecord>(guardedValue, (value) => SrvRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetResource: (() { final guardedValue = map['targetResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tlsaRecords: (() { final guardedValue = map['tlsaRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TlsaRecord>(guardedValue, (value) => TlsaRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      trafficManagementProfile: (() { final guardedValue = map['trafficManagementProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      txtRecords: (() { final guardedValue = map['txtRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TxtRecord>(guardedValue, (value) => TxtRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zoneName: pulumi.Input.fromValue(map['zoneName'] as String),
    );
  }
}


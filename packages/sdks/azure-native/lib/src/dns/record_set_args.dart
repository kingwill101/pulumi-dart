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
  RecordSetArgs({
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
      aRecords: map['aRecords'] == null ? null : (pulumi.Input.decodeList<ARecord>(map['aRecords'], (value) => ARecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
      aaaaRecords: map['aaaaRecords'] == null ? null : (pulumi.Input.decodeList<AaaaRecord>(map['aaaaRecords'], (value) => AaaaRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
      caaRecords: map['caaRecords'] == null ? null : (pulumi.Input.decodeList<CaaRecord>(map['caaRecords'], (value) => CaaRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cnameRecord: map['cnameRecord'] == null ? null : (CnameRecord.fromMap((map['cnameRecord'] as Map).cast<String, dynamic>())).input(),
      dsRecords: map['dsRecords'] == null ? null : (pulumi.Input.decodeList<DsRecord>(map['dsRecords'], (value) => DsRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      mxRecords: map['mxRecords'] == null ? null : (pulumi.Input.decodeList<MxRecord>(map['mxRecords'], (value) => MxRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
      naptrRecords: map['naptrRecords'] == null ? null : (pulumi.Input.decodeList<NaptrRecord>(map['naptrRecords'], (value) => NaptrRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nsRecords: map['nsRecords'] == null ? null : (pulumi.Input.decodeList<NsRecord>(map['nsRecords'], (value) => NsRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ptrRecords: map['ptrRecords'] == null ? null : (pulumi.Input.decodeList<PtrRecord>(map['ptrRecords'], (value) => PtrRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
      recordType: (map['recordType'] as String).input(),
      relativeRecordSetName: map['relativeRecordSetName'] == null ? null : (map['relativeRecordSetName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      soaRecord: map['soaRecord'] == null ? null : (SoaRecord.fromMap((map['soaRecord'] as Map).cast<String, dynamic>())).input(),
      srvRecords: map['srvRecords'] == null ? null : (pulumi.Input.decodeList<SrvRecord>(map['srvRecords'], (value) => SrvRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetResource: map['targetResource'] == null ? null : (SubResource.fromMap((map['targetResource'] as Map).cast<String, dynamic>())).input(),
      tlsaRecords: map['tlsaRecords'] == null ? null : (pulumi.Input.decodeList<TlsaRecord>(map['tlsaRecords'], (value) => TlsaRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
      trafficManagementProfile: map['trafficManagementProfile'] == null ? null : (SubResource.fromMap((map['trafficManagementProfile'] as Map).cast<String, dynamic>())).input(),
      ttl: map['ttl'] == null ? null : (map['ttl'] as double).input(),
      txtRecords: map['txtRecords'] == null ? null : (pulumi.Input.decodeList<TxtRecord>(map['txtRecords'], (value) => TxtRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
      zoneName: (map['zoneName'] as String).input(),
    );
  }
}


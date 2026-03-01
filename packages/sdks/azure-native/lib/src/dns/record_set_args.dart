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
    pulumi.Output<List<ARecord>>? aRecords,
    pulumi.Output<List<AaaaRecord>>? aaaaRecords,
    pulumi.Output<List<CaaRecord>>? caaRecords,
    pulumi.Output<CnameRecord>? cnameRecord,
    pulumi.Output<List<DsRecord>>? dsRecords,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<List<MxRecord>>? mxRecords,
    pulumi.Output<List<NaptrRecord>>? naptrRecords,
    pulumi.Output<List<NsRecord>>? nsRecords,
    pulumi.Output<List<PtrRecord>>? ptrRecords,
    required pulumi.Output<String> recordType,
    pulumi.Output<String>? relativeRecordSetName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<SoaRecord>? soaRecord,
    pulumi.Output<List<SrvRecord>>? srvRecords,
    pulumi.Output<SubResource>? targetResource,
    pulumi.Output<List<TlsaRecord>>? tlsaRecords,
    pulumi.Output<SubResource>? trafficManagementProfile,
    pulumi.Output<double>? ttl,
    pulumi.Output<List<TxtRecord>>? txtRecords,
    required pulumi.Output<String> zoneName,
  }) :
      aRecords = pulumi.Input.asOptionalInput<List<ARecord>>(aRecords),
      aaaaRecords = pulumi.Input.asOptionalInput<List<AaaaRecord>>(aaaaRecords),
      caaRecords = pulumi.Input.asOptionalInput<List<CaaRecord>>(caaRecords),
      cnameRecord = pulumi.Input.asOptionalInput<CnameRecord>(cnameRecord),
      dsRecords = pulumi.Input.asOptionalInput<List<DsRecord>>(dsRecords),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      mxRecords = pulumi.Input.asOptionalInput<List<MxRecord>>(mxRecords),
      naptrRecords = pulumi.Input.asOptionalInput<List<NaptrRecord>>(naptrRecords),
      nsRecords = pulumi.Input.asOptionalInput<List<NsRecord>>(nsRecords),
      ptrRecords = pulumi.Input.asOptionalInput<List<PtrRecord>>(ptrRecords),
      recordType = pulumi.Input.asInput<String>(recordType),
      relativeRecordSetName = pulumi.Input.asOptionalInput<String>(relativeRecordSetName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      soaRecord = pulumi.Input.asOptionalInput<SoaRecord>(soaRecord),
      srvRecords = pulumi.Input.asOptionalInput<List<SrvRecord>>(srvRecords),
      targetResource = pulumi.Input.asOptionalInput<SubResource>(targetResource),
      tlsaRecords = pulumi.Input.asOptionalInput<List<TlsaRecord>>(tlsaRecords),
      trafficManagementProfile = pulumi.Input.asOptionalInput<SubResource>(trafficManagementProfile),
      ttl = pulumi.Input.asOptionalInput<double>(ttl),
      txtRecords = pulumi.Input.asOptionalInput<List<TxtRecord>>(txtRecords),
      zoneName = pulumi.Input.asInput<String>(zoneName);

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
      aRecords: map['aRecords'] == null ? null : pulumi.Output.create<List<ARecord>>(pulumi.Input.decodeList<ARecord>(map['aRecords'], (value) => ARecord.fromMap((value as Map).cast<String, dynamic>()))),
      aaaaRecords: map['aaaaRecords'] == null ? null : pulumi.Output.create<List<AaaaRecord>>(pulumi.Input.decodeList<AaaaRecord>(map['aaaaRecords'], (value) => AaaaRecord.fromMap((value as Map).cast<String, dynamic>()))),
      caaRecords: map['caaRecords'] == null ? null : pulumi.Output.create<List<CaaRecord>>(pulumi.Input.decodeList<CaaRecord>(map['caaRecords'], (value) => CaaRecord.fromMap((value as Map).cast<String, dynamic>()))),
      cnameRecord: map['cnameRecord'] == null ? null : pulumi.Output.create<CnameRecord>(CnameRecord.fromMap((map['cnameRecord'] as Map).cast<String, dynamic>())),
      dsRecords: map['dsRecords'] == null ? null : pulumi.Output.create<List<DsRecord>>(pulumi.Input.decodeList<DsRecord>(map['dsRecords'], (value) => DsRecord.fromMap((value as Map).cast<String, dynamic>()))),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      mxRecords: map['mxRecords'] == null ? null : pulumi.Output.create<List<MxRecord>>(pulumi.Input.decodeList<MxRecord>(map['mxRecords'], (value) => MxRecord.fromMap((value as Map).cast<String, dynamic>()))),
      naptrRecords: map['naptrRecords'] == null ? null : pulumi.Output.create<List<NaptrRecord>>(pulumi.Input.decodeList<NaptrRecord>(map['naptrRecords'], (value) => NaptrRecord.fromMap((value as Map).cast<String, dynamic>()))),
      nsRecords: map['nsRecords'] == null ? null : pulumi.Output.create<List<NsRecord>>(pulumi.Input.decodeList<NsRecord>(map['nsRecords'], (value) => NsRecord.fromMap((value as Map).cast<String, dynamic>()))),
      ptrRecords: map['ptrRecords'] == null ? null : pulumi.Output.create<List<PtrRecord>>(pulumi.Input.decodeList<PtrRecord>(map['ptrRecords'], (value) => PtrRecord.fromMap((value as Map).cast<String, dynamic>()))),
      recordType: pulumi.Output.create<String>(map['recordType'] as String),
      relativeRecordSetName: map['relativeRecordSetName'] == null ? null : pulumi.Output.create<String>(map['relativeRecordSetName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      soaRecord: map['soaRecord'] == null ? null : pulumi.Output.create<SoaRecord>(SoaRecord.fromMap((map['soaRecord'] as Map).cast<String, dynamic>())),
      srvRecords: map['srvRecords'] == null ? null : pulumi.Output.create<List<SrvRecord>>(pulumi.Input.decodeList<SrvRecord>(map['srvRecords'], (value) => SrvRecord.fromMap((value as Map).cast<String, dynamic>()))),
      targetResource: map['targetResource'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['targetResource'] as Map).cast<String, dynamic>())),
      tlsaRecords: map['tlsaRecords'] == null ? null : pulumi.Output.create<List<TlsaRecord>>(pulumi.Input.decodeList<TlsaRecord>(map['tlsaRecords'], (value) => TlsaRecord.fromMap((value as Map).cast<String, dynamic>()))),
      trafficManagementProfile: map['trafficManagementProfile'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['trafficManagementProfile'] as Map).cast<String, dynamic>())),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<double>(map['ttl'] as double),
      txtRecords: map['txtRecords'] == null ? null : pulumi.Output.create<List<TxtRecord>>(pulumi.Input.decodeList<TxtRecord>(map['txtRecords'], (value) => TxtRecord.fromMap((value as Map).cast<String, dynamic>()))),
      zoneName: pulumi.Output.create<String>(map['zoneName'] as String),
    );
  }
}


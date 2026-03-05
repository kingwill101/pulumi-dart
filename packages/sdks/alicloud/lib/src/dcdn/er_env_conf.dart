// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'er_env_conf_preset_canary_anhui.dart';
import 'er_env_conf_preset_canary_beijing.dart';
import 'er_env_conf_preset_canary_chongqing.dart';
import 'er_env_conf_preset_canary_fujian.dart';
import 'er_env_conf_preset_canary_gansu.dart';
import 'er_env_conf_preset_canary_guangdong.dart';
import 'er_env_conf_preset_canary_guangxi.dart';
import 'er_env_conf_preset_canary_guizhou.dart';
import 'er_env_conf_preset_canary_hainan.dart';
import 'er_env_conf_preset_canary_hebei.dart';
import 'er_env_conf_preset_canary_heilongjiang.dart';
import 'er_env_conf_preset_canary_henan.dart';
import 'er_env_conf_preset_canary_hong_kong.dart';
import 'er_env_conf_preset_canary_hubei.dart';
import 'er_env_conf_preset_canary_hunan.dart';
import 'er_env_conf_preset_canary_jiangsu.dart';
import 'er_env_conf_preset_canary_jiangxi.dart';
import 'er_env_conf_preset_canary_jilin.dart';
import 'er_env_conf_preset_canary_liaoning.dart';
import 'er_env_conf_preset_canary_macau.dart';
import 'er_env_conf_preset_canary_neimenggu.dart';
import 'er_env_conf_preset_canary_ningxia.dart';
import 'er_env_conf_preset_canary_overseas.dart';
import 'er_env_conf_preset_canary_qinghai.dart';
import 'er_env_conf_preset_canary_shaanxi.dart';
import 'er_env_conf_preset_canary_shandong.dart';
import 'er_env_conf_preset_canary_shanghai.dart';
import 'er_env_conf_preset_canary_shanxi.dart';
import 'er_env_conf_preset_canary_sichuan.dart';
import 'er_env_conf_preset_canary_taiwan.dart';
import 'er_env_conf_preset_canary_tianjin.dart';
import 'er_env_conf_preset_canary_xinjiang.dart';
import 'er_env_conf_preset_canary_xizang.dart';
import 'er_env_conf_preset_canary_yunnan.dart';
import 'er_env_conf_preset_canary_zhejiang.dart';
import 'er_env_conf_production.dart';
import 'er_env_conf_staging.dart';

class ErEnvConf {
  /// The configuration of a presetCanaryAnhui environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryAnhui>? presetCanaryAnhui;
  /// The configuration of a presetCanaryBeijing environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryBeijing>? presetCanaryBeijing;
  /// The configuration of a presetCanaryChongqing environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryChongqing>? presetCanaryChongqing;
  /// The configuration of a presetCanaryFujian environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryFujian>? presetCanaryFujian;
  /// The configuration of a presetCanaryGansu environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryGansu>? presetCanaryGansu;
  /// The configuration of a presetCanaryGuangdong environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryGuangdong>? presetCanaryGuangdong;
  /// The configuration of a presetCanaryGuangxi environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryGuangxi>? presetCanaryGuangxi;
  /// The configuration of a presetCanaryGuizhou environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryGuizhou>? presetCanaryGuizhou;
  /// The configuration of a presetCanaryHainan environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryHainan>? presetCanaryHainan;
  /// The configuration of a presetCanaryHebei environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryHebei>? presetCanaryHebei;
  /// The configuration of a presetCanaryHeilongjiang environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryHeilongjiang>? presetCanaryHeilongjiang;
  /// The configuration of a presetCanaryHenan environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryHenan>? presetCanaryHenan;
  /// The configuration of a presetCanaryHongKong environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryHongKong>? presetCanaryHongKong;
  /// The configuration of a presetCanaryHubei environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryHubei>? presetCanaryHubei;
  /// The configuration of a presetCanaryHunan environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryHunan>? presetCanaryHunan;
  /// The configuration of a presetCanaryJiangsu environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryJiangsu>? presetCanaryJiangsu;
  /// The configuration of a presetCanaryJiangxi environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryJiangxi>? presetCanaryJiangxi;
  /// The configuration of a presetCanaryJilin environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryJilin>? presetCanaryJilin;
  /// The configuration of a presetCanaryLiaoning environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryLiaoning>? presetCanaryLiaoning;
  /// The configuration of a presetCanaryMacau environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryMacau>? presetCanaryMacau;
  /// The configuration of a presetCanaryNeimenggu environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryNeimenggu>? presetCanaryNeimenggu;
  /// The configuration of a presetCanaryNingxia environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryNingxia>? presetCanaryNingxia;
  /// The configuration of a presetCanaryOverseas environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryOverseas>? presetCanaryOverseas;
  /// The configuration of a presetCanaryQinghai environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryQinghai>? presetCanaryQinghai;
  /// The configuration of a presetCanaryShaanxi environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryShaanxi>? presetCanaryShaanxi;
  /// The configuration of a presetCanaryShandong environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryShandong>? presetCanaryShandong;
  /// The configuration of a presetCanaryShanghai environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryShanghai>? presetCanaryShanghai;
  /// The configuration of a presetCanaryShanxi environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryShanxi>? presetCanaryShanxi;
  /// The configuration of a presetCanarySichuan environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanarySichuan>? presetCanarySichuan;
  /// The configuration of a presetCanaryTaiwan environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryTaiwan>? presetCanaryTaiwan;
  /// The configuration of a presetCanaryTianjin environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryTianjin>? presetCanaryTianjin;
  /// The configuration of a presetCanaryXinjiang environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryXinjiang>? presetCanaryXinjiang;
  /// The configuration of a presetCanaryXizang environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryXizang>? presetCanaryXizang;
  /// The configuration of a presetCanaryYunnan environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryYunnan>? presetCanaryYunnan;
  /// The configuration of a presetCanaryZhejiang environment. See `staging` below.
  final pulumi.Input<ErEnvConfPresetCanaryZhejiang>? presetCanaryZhejiang;
  /// The configuration of a production environment. See `staging` below.
  final pulumi.Input<ErEnvConfProduction>? production;
  /// The configuration of a staging environment. See `staging` below.
  final pulumi.Input<ErEnvConfStaging>? staging;

  /// Creates a new [ErEnvConf].
  /// [presetCanaryAnhui] The configuration of a presetCanaryAnhui environment. See `staging` below.
  /// [presetCanaryBeijing] The configuration of a presetCanaryBeijing environment. See `staging` below.
  /// [presetCanaryChongqing] The configuration of a presetCanaryChongqing environment. See `staging` below.
  /// [presetCanaryFujian] The configuration of a presetCanaryFujian environment. See `staging` below.
  /// [presetCanaryGansu] The configuration of a presetCanaryGansu environment. See `staging` below.
  /// [presetCanaryGuangdong] The configuration of a presetCanaryGuangdong environment. See `staging` below.
  /// [presetCanaryGuangxi] The configuration of a presetCanaryGuangxi environment. See `staging` below.
  /// [presetCanaryGuizhou] The configuration of a presetCanaryGuizhou environment. See `staging` below.
  /// [presetCanaryHainan] The configuration of a presetCanaryHainan environment. See `staging` below.
  /// [presetCanaryHebei] The configuration of a presetCanaryHebei environment. See `staging` below.
  /// [presetCanaryHeilongjiang] The configuration of a presetCanaryHeilongjiang environment. See `staging` below.
  /// [presetCanaryHenan] The configuration of a presetCanaryHenan environment. See `staging` below.
  /// [presetCanaryHongKong] The configuration of a presetCanaryHongKong environment. See `staging` below.
  /// [presetCanaryHubei] The configuration of a presetCanaryHubei environment. See `staging` below.
  /// [presetCanaryHunan] The configuration of a presetCanaryHunan environment. See `staging` below.
  /// [presetCanaryJiangsu] The configuration of a presetCanaryJiangsu environment. See `staging` below.
  /// [presetCanaryJiangxi] The configuration of a presetCanaryJiangxi environment. See `staging` below.
  /// [presetCanaryJilin] The configuration of a presetCanaryJilin environment. See `staging` below.
  /// [presetCanaryLiaoning] The configuration of a presetCanaryLiaoning environment. See `staging` below.
  /// [presetCanaryMacau] The configuration of a presetCanaryMacau environment. See `staging` below.
  /// [presetCanaryNeimenggu] The configuration of a presetCanaryNeimenggu environment. See `staging` below.
  /// [presetCanaryNingxia] The configuration of a presetCanaryNingxia environment. See `staging` below.
  /// [presetCanaryOverseas] The configuration of a presetCanaryOverseas environment. See `staging` below.
  /// [presetCanaryQinghai] The configuration of a presetCanaryQinghai environment. See `staging` below.
  /// [presetCanaryShaanxi] The configuration of a presetCanaryShaanxi environment. See `staging` below.
  /// [presetCanaryShandong] The configuration of a presetCanaryShandong environment. See `staging` below.
  /// [presetCanaryShanghai] The configuration of a presetCanaryShanghai environment. See `staging` below.
  /// [presetCanaryShanxi] The configuration of a presetCanaryShanxi environment. See `staging` below.
  /// [presetCanarySichuan] The configuration of a presetCanarySichuan environment. See `staging` below.
  /// [presetCanaryTaiwan] The configuration of a presetCanaryTaiwan environment. See `staging` below.
  /// [presetCanaryTianjin] The configuration of a presetCanaryTianjin environment. See `staging` below.
  /// [presetCanaryXinjiang] The configuration of a presetCanaryXinjiang environment. See `staging` below.
  /// [presetCanaryXizang] The configuration of a presetCanaryXizang environment. See `staging` below.
  /// [presetCanaryYunnan] The configuration of a presetCanaryYunnan environment. See `staging` below.
  /// [presetCanaryZhejiang] The configuration of a presetCanaryZhejiang environment. See `staging` below.
  /// [production] The configuration of a production environment. See `staging` below.
  /// [staging] The configuration of a staging environment. See `staging` below.
  ErEnvConf({
    this.presetCanaryAnhui,
    this.presetCanaryBeijing,
    this.presetCanaryChongqing,
    this.presetCanaryFujian,
    this.presetCanaryGansu,
    this.presetCanaryGuangdong,
    this.presetCanaryGuangxi,
    this.presetCanaryGuizhou,
    this.presetCanaryHainan,
    this.presetCanaryHebei,
    this.presetCanaryHeilongjiang,
    this.presetCanaryHenan,
    this.presetCanaryHongKong,
    this.presetCanaryHubei,
    this.presetCanaryHunan,
    this.presetCanaryJiangsu,
    this.presetCanaryJiangxi,
    this.presetCanaryJilin,
    this.presetCanaryLiaoning,
    this.presetCanaryMacau,
    this.presetCanaryNeimenggu,
    this.presetCanaryNingxia,
    this.presetCanaryOverseas,
    this.presetCanaryQinghai,
    this.presetCanaryShaanxi,
    this.presetCanaryShandong,
    this.presetCanaryShanghai,
    this.presetCanaryShanxi,
    this.presetCanarySichuan,
    this.presetCanaryTaiwan,
    this.presetCanaryTianjin,
    this.presetCanaryXinjiang,
    this.presetCanaryXizang,
    this.presetCanaryYunnan,
    this.presetCanaryZhejiang,
    this.production,
    this.staging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'presetCanaryAnhui': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryAnhui, Map<String, dynamic>>(presetCanaryAnhui, (value) => value.toMap()),
      'presetCanaryBeijing': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryBeijing, Map<String, dynamic>>(presetCanaryBeijing, (value) => value.toMap()),
      'presetCanaryChongqing': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryChongqing, Map<String, dynamic>>(presetCanaryChongqing, (value) => value.toMap()),
      'presetCanaryFujian': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryFujian, Map<String, dynamic>>(presetCanaryFujian, (value) => value.toMap()),
      'presetCanaryGansu': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryGansu, Map<String, dynamic>>(presetCanaryGansu, (value) => value.toMap()),
      'presetCanaryGuangdong': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryGuangdong, Map<String, dynamic>>(presetCanaryGuangdong, (value) => value.toMap()),
      'presetCanaryGuangxi': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryGuangxi, Map<String, dynamic>>(presetCanaryGuangxi, (value) => value.toMap()),
      'presetCanaryGuizhou': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryGuizhou, Map<String, dynamic>>(presetCanaryGuizhou, (value) => value.toMap()),
      'presetCanaryHainan': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryHainan, Map<String, dynamic>>(presetCanaryHainan, (value) => value.toMap()),
      'presetCanaryHebei': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryHebei, Map<String, dynamic>>(presetCanaryHebei, (value) => value.toMap()),
      'presetCanaryHeilongjiang': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryHeilongjiang, Map<String, dynamic>>(presetCanaryHeilongjiang, (value) => value.toMap()),
      'presetCanaryHenan': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryHenan, Map<String, dynamic>>(presetCanaryHenan, (value) => value.toMap()),
      'presetCanaryHongKong': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryHongKong, Map<String, dynamic>>(presetCanaryHongKong, (value) => value.toMap()),
      'presetCanaryHubei': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryHubei, Map<String, dynamic>>(presetCanaryHubei, (value) => value.toMap()),
      'presetCanaryHunan': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryHunan, Map<String, dynamic>>(presetCanaryHunan, (value) => value.toMap()),
      'presetCanaryJiangsu': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryJiangsu, Map<String, dynamic>>(presetCanaryJiangsu, (value) => value.toMap()),
      'presetCanaryJiangxi': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryJiangxi, Map<String, dynamic>>(presetCanaryJiangxi, (value) => value.toMap()),
      'presetCanaryJilin': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryJilin, Map<String, dynamic>>(presetCanaryJilin, (value) => value.toMap()),
      'presetCanaryLiaoning': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryLiaoning, Map<String, dynamic>>(presetCanaryLiaoning, (value) => value.toMap()),
      'presetCanaryMacau': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryMacau, Map<String, dynamic>>(presetCanaryMacau, (value) => value.toMap()),
      'presetCanaryNeimenggu': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryNeimenggu, Map<String, dynamic>>(presetCanaryNeimenggu, (value) => value.toMap()),
      'presetCanaryNingxia': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryNingxia, Map<String, dynamic>>(presetCanaryNingxia, (value) => value.toMap()),
      'presetCanaryOverseas': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryOverseas, Map<String, dynamic>>(presetCanaryOverseas, (value) => value.toMap()),
      'presetCanaryQinghai': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryQinghai, Map<String, dynamic>>(presetCanaryQinghai, (value) => value.toMap()),
      'presetCanaryShaanxi': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryShaanxi, Map<String, dynamic>>(presetCanaryShaanxi, (value) => value.toMap()),
      'presetCanaryShandong': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryShandong, Map<String, dynamic>>(presetCanaryShandong, (value) => value.toMap()),
      'presetCanaryShanghai': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryShanghai, Map<String, dynamic>>(presetCanaryShanghai, (value) => value.toMap()),
      'presetCanaryShanxi': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryShanxi, Map<String, dynamic>>(presetCanaryShanxi, (value) => value.toMap()),
      'presetCanarySichuan': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanarySichuan, Map<String, dynamic>>(presetCanarySichuan, (value) => value.toMap()),
      'presetCanaryTaiwan': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryTaiwan, Map<String, dynamic>>(presetCanaryTaiwan, (value) => value.toMap()),
      'presetCanaryTianjin': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryTianjin, Map<String, dynamic>>(presetCanaryTianjin, (value) => value.toMap()),
      'presetCanaryXinjiang': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryXinjiang, Map<String, dynamic>>(presetCanaryXinjiang, (value) => value.toMap()),
      'presetCanaryXizang': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryXizang, Map<String, dynamic>>(presetCanaryXizang, (value) => value.toMap()),
      'presetCanaryYunnan': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryYunnan, Map<String, dynamic>>(presetCanaryYunnan, (value) => value.toMap()),
      'presetCanaryZhejiang': ?pulumi.Input.mapOptionalInputValue<ErEnvConfPresetCanaryZhejiang, Map<String, dynamic>>(presetCanaryZhejiang, (value) => value.toMap()),
      'production': ?pulumi.Input.mapOptionalInputValue<ErEnvConfProduction, Map<String, dynamic>>(production, (value) => value.toMap()),
      'staging': ?pulumi.Input.mapOptionalInputValue<ErEnvConfStaging, Map<String, dynamic>>(staging, (value) => value.toMap()),
    };
  }

  factory ErEnvConf.fromMap(Map<String, dynamic> map) {
    return ErEnvConf(
      presetCanaryAnhui: (() { final guardedValue = map['presetCanaryAnhui']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryAnhui.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryBeijing: (() { final guardedValue = map['presetCanaryBeijing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryBeijing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryChongqing: (() { final guardedValue = map['presetCanaryChongqing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryChongqing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryFujian: (() { final guardedValue = map['presetCanaryFujian']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryFujian.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryGansu: (() { final guardedValue = map['presetCanaryGansu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryGansu.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryGuangdong: (() { final guardedValue = map['presetCanaryGuangdong']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryGuangdong.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryGuangxi: (() { final guardedValue = map['presetCanaryGuangxi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryGuangxi.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryGuizhou: (() { final guardedValue = map['presetCanaryGuizhou']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryGuizhou.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryHainan: (() { final guardedValue = map['presetCanaryHainan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryHainan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryHebei: (() { final guardedValue = map['presetCanaryHebei']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryHebei.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryHeilongjiang: (() { final guardedValue = map['presetCanaryHeilongjiang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryHeilongjiang.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryHenan: (() { final guardedValue = map['presetCanaryHenan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryHenan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryHongKong: (() { final guardedValue = map['presetCanaryHongKong']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryHongKong.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryHubei: (() { final guardedValue = map['presetCanaryHubei']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryHubei.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryHunan: (() { final guardedValue = map['presetCanaryHunan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryHunan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryJiangsu: (() { final guardedValue = map['presetCanaryJiangsu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryJiangsu.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryJiangxi: (() { final guardedValue = map['presetCanaryJiangxi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryJiangxi.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryJilin: (() { final guardedValue = map['presetCanaryJilin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryJilin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryLiaoning: (() { final guardedValue = map['presetCanaryLiaoning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryLiaoning.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryMacau: (() { final guardedValue = map['presetCanaryMacau']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryMacau.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryNeimenggu: (() { final guardedValue = map['presetCanaryNeimenggu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryNeimenggu.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryNingxia: (() { final guardedValue = map['presetCanaryNingxia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryNingxia.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryOverseas: (() { final guardedValue = map['presetCanaryOverseas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryOverseas.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryQinghai: (() { final guardedValue = map['presetCanaryQinghai']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryQinghai.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryShaanxi: (() { final guardedValue = map['presetCanaryShaanxi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryShaanxi.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryShandong: (() { final guardedValue = map['presetCanaryShandong']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryShandong.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryShanghai: (() { final guardedValue = map['presetCanaryShanghai']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryShanghai.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryShanxi: (() { final guardedValue = map['presetCanaryShanxi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryShanxi.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanarySichuan: (() { final guardedValue = map['presetCanarySichuan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanarySichuan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryTaiwan: (() { final guardedValue = map['presetCanaryTaiwan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryTaiwan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryTianjin: (() { final guardedValue = map['presetCanaryTianjin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryTianjin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryXinjiang: (() { final guardedValue = map['presetCanaryXinjiang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryXinjiang.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryXizang: (() { final guardedValue = map['presetCanaryXizang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryXizang.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryYunnan: (() { final guardedValue = map['presetCanaryYunnan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryYunnan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      presetCanaryZhejiang: (() { final guardedValue = map['presetCanaryZhejiang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfPresetCanaryZhejiang.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      production: (() { final guardedValue = map['production']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfProduction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      staging: (() { final guardedValue = map['staging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConfStaging.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


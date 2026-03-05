// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedKubernetesAddon {
  /// If this parameter is left empty, no configurations are required. For more config information, see cs_kubernetes_addon_metadata.
  final pulumi.Input<String>? config;
  /// It specifies whether to disable automatic installation.
  ///
  /// It is a new field since 1.75.0. You can specific network plugin, log component,ingress component and so on.
  ///
  /// You can get more information about addons on ACK web console. When you create a ACK cluster. You can get openapi-spec before creating the cluster on submission page.
  ///
  /// `logtail-ds` - You can specify `IngressDashboardEnabled` and `sls_project_name` in config. If you switch on `IngressDashboardEnabled` and `sls_project_name`,then logtail-ds would use `sls_project_name` as default log store.
  ///
  /// `nginx-ingress-controller` - You can specific `IngressSlbNetworkType` in config. Options: internet|intranet.
  ///
  /// The `main.tf`:
  ///
  ///
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as alicloud from "@pulumi/alicloud";
  /// import * as std from "@pulumi/std";
  ///
  /// const k8s = new alicloud.cs.ManagedKubernetes("k8s", {addons: Object.entries(clusterAddons).map(([k, v]) => ({key: k, value: v})).map(entry => ({
  ///     name: std.lookup({
  ///         map: entry.value,
  ///         key: "name",
  ///         "default": clusterAddons,
  ///     }).then(invoke => invoke.result),
  ///     config: std.lookup({
  ///         map: entry.value,
  ///         key: "config",
  ///         "default": clusterAddons,
  ///     }).then(invoke => invoke.result),
  ///     version: std.lookup({
  ///         map: entry.value,
  ///         key: "version",
  ///         "default": clusterAddons,
  ///     }).then(invoke => invoke.result),
  ///     disabled: std.lookup({
  ///         map: entry.value,
  ///         key: "disabled",
  ///         "default": clusterAddons,
  ///     }).then(invoke => invoke.result),
  /// }))});
  /// ```
  /// ```python
  /// import pulumi
  /// import pulumi_alicloud as alicloud
  /// import pulumi_std as std
  ///
  /// k8s = alicloud.cs.ManagedKubernetes("k8s", addons=[{
  ///     "name": std.lookup(map=entry["value"],
  ///         key="name",
  ///         default=cluster_addons).result,
  ///     "config": std.lookup(map=entry["value"],
  ///         key="config",
  ///         default=cluster_addons).result,
  ///     "version": std.lookup(map=entry["value"],
  ///         key="version",
  ///         default=cluster_addons).result,
  ///     "disabled": std.lookup(map=entry["value"],
  ///         key="disabled",
  ///         default=cluster_addons).result,
  /// } for entry in [{"key": k, "value": v} for k, v in cluster_addons]])
  /// ```
  /// ```csharp
  /// using System.Collections.Generic;
  /// using System.Linq;
  /// using Pulumi;
  /// using AliCloud = Pulumi.AliCloud;
  /// using Std = Pulumi.Std;
  ///
  /// return await Deployment.RunAsync(() =>
  /// {
  ///     var k8s = new AliCloud.CS.ManagedKubernetes("k8s", new()
  ///     {
  ///         Addons = .Select(entry =>
  ///         {
  ///             return new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
  ///             {
  ///                 Name = Std.Lookup.Invoke(new()
  ///                 {
  ///                     Map = entry.Value,
  ///                     Key = "name",
  ///                     Default = clusterAddons,
  ///                 }).Apply(invoke => invoke.Result),
  ///                 Config = Std.Lookup.Invoke(new()
  ///                 {
  ///                     Map = entry.Value,
  ///                     Key = "config",
  ///                     Default = clusterAddons,
  ///                 }).Apply(invoke => invoke.Result),
  ///                 Version = Std.Lookup.Invoke(new()
  ///                 {
  ///                     Map = entry.Value,
  ///                     Key = "version",
  ///                     Default = clusterAddons,
  ///                 }).Apply(invoke => invoke.Result),
  ///                 Disabled = Std.Lookup.Invoke(new()
  ///                 {
  ///                     Map = entry.Value,
  ///                     Key = "disabled",
  ///                     Default = clusterAddons,
  ///                 }).Apply(invoke => invoke.Result),
  ///             };
  ///         }).ToList(),
  ///     });
  ///
  /// });
  /// ```
  ///
  ///
  /// The `varibales.tf`:
  ///
  /// ```
  /// # Network-flannel is required, Conflicts With Network-terway
  /// variable "cluster_addons" {
  /// description = "Addon components in kubernetes cluster"
  ///
  /// type = list(object({
  /// name      = string
  /// config    = string
  /// }))
  ///
  /// default = [
  /// {
  /// "name"     = "flannel",
  /// "config"   = "",
  /// }
  /// ]
  /// }
  ///
  /// # Network-terway is required, Conflicts With Network-flannel
  /// variable "cluster_addons" {
  /// type = list(object({
  /// name      = string
  /// config    = string
  /// }))
  ///
  /// default = [
  /// {
  /// "name"     = "terway-eniip",
  /// "config"   = "",
  /// }
  /// ]
  /// }
  ///
  /// # Storage-csi is required, Conflicts With Storage-flexvolume
  /// variable "cluster_addons" {
  /// type = list(object({
  /// name      = string
  /// config    = string
  /// }))
  ///
  /// default = [
  /// {
  /// "name"     = "csi-plugin",
  /// "config"   = "",
  /// },
  /// {
  /// "name"     = "csi-provisioner",
  /// "config"   = "",
  /// }
  /// ]
  /// }
  ///
  /// # Storage-flexvolume is required, Conflicts With Storage-csi
  /// variable "cluster_addons" {
  /// type = list(object({
  /// name      = string
  /// config    = string
  /// }))
  /// default = [
  /// {
  /// "name"     = "flexvolume",
  /// "config"   = "",
  /// }
  /// ]
  /// }
  ///
  /// # Log, Optional
  /// variable "cluster_addons" {
  /// type = list(object({
  /// name      = string
  /// config    = string
  /// }))
  /// default = [
  /// {
  /// "name"     = "logtail-ds",
  /// "config"   = "{\"IngressDashboardEnabled\":\"true\",\"sls_project_name\":\"your-sls-project-name\"}",
  /// }
  /// ]
  /// }
  ///
  /// # Ingress,Optional
  /// variable "cluster_addons" {
  /// type = list(object({
  /// name      = string
  /// config    = string
  /// }))
  ///
  /// default = [
  /// {
  /// "name"     = "nginx-ingress-controller",
  /// "config"   = "{\"IngressSlbNetworkType\":\"internet\"}",
  /// }
  /// ]
  /// }
  ///
  /// # Ingress-Disable, Optional
  /// variable "cluster_addons" {
  /// type = list(object({
  /// name      = string
  /// config    = string
  /// disabled  = bool
  /// }))
  ///
  /// default = [
  /// {
  /// "name"     = "nginx-ingress-controller",
  /// "config"   = "",
  /// "disabled": true,
  /// }
  /// ]
  ///
  /// # Prometheus, Optional.
  /// variable "cluster_addons" {
  /// type = list(object({
  /// name      = string
  /// config    = string
  /// }))
  ///
  /// default = [
  /// {
  /// "name"     = "arms-prometheus",
  /// "config"   = "",
  /// }
  /// ]
  /// }
  ///
  /// # Event Center, Optional.
  /// variable "cluster_addons" {
  /// type = list(object({
  /// name      = string
  /// config    = string
  /// }))
  /// default = [
  /// {
  /// "name"     = "ack-node-problem-detector",
  /// "config"   = "{\"sls_project_name\":\"\"}",
  /// }
  /// ]
  /// }
  /// # ACK default alert, Optional.
  /// variable "cluster_addons" {
  /// type = list(object({
  /// name      = string
  /// config    = string
  /// }))
  /// default = [
  /// {
  /// "name"     = "alicloud-monitor-controller",
  /// "config"   = "{\"group_contact_ids\":\"[159]\"}",
  /// }
  /// ]
  /// }
  /// ```
  final pulumi.Input<bool>? disabled;
  /// This parameter specifies the name of the component.
  final pulumi.Input<String>? name;
  /// It specifies the version of the component.
  final pulumi.Input<String>? version;

  /// Creates a new [ManagedKubernetesAddon].
  /// [config] If this parameter is left empty, no configurations are required. For more config information, see cs_kubernetes_addon_metadata.
  /// [disabled] It specifies whether to disable automatic installation.
  /// [name] This parameter specifies the name of the component.
  /// [version] It specifies the version of the component.
  ManagedKubernetesAddon({
    this.config,
    this.disabled,
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'disabled': ?disabled,
      'name': ?name,
      'version': ?version,
    };
  }

  factory ManagedKubernetesAddon.fromMap(Map<String, dynamic> map) {
    return ManagedKubernetesAddon(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


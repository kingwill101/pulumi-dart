import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the Azure Bare Metal Instance SKU.
enum AzureBareMetalInstanceSizeNamesEnum implements pulumi.PulumiEnum<String> {
  valueS72m("S72m"),
  valueS144m("S144m"),
  valueS72("S72"),
  valueS144("S144"),
  valueS192("S192"),
  valueS192m("S192m"),
  valueS192xm("S192xm"),
  valueS96("S96"),
  valueS112("S112"),
  valueS224("S224"),
  valueS224m("S224m"),
  valueS224om("S224om"),
  valueS224oo("S224oo"),
  valueS224oom("S224oom"),
  valueS224ooo("S224ooo"),
  valueS384("S384"),
  valueS384m("S384m"),
  valueS384xm("S384xm"),
  valueS384xxm("S384xxm"),
  valueS448("S448"),
  valueS448m("S448m"),
  valueS448om("S448om"),
  valueS448oo("S448oo"),
  valueS448oom("S448oom"),
  valueS448ooo("S448ooo"),
  valueS448se("S448se"),
  valueS576m("S576m"),
  valueS576xm("S576xm"),
  valueS672("S672"),
  valueS672m("S672m"),
  valueS672om("S672om"),
  valueS672oo("S672oo"),
  valueS672oom("S672oom"),
  valueS672ooo("S672ooo"),
  valueS768("S768"),
  valueS768m("S768m"),
  valueS768xm("S768xm"),
  valueS896("S896"),
  valueS896m("S896m"),
  valueS896om("S896om"),
  valueS896oo("S896oo"),
  valueS896oom("S896oom"),
  valueS896ooo("S896ooo"),
  valueS960m("S960m");

  const AzureBareMetalInstanceSizeNamesEnum(this.wireValue);
  @override
  final String wireValue;

  static AzureBareMetalInstanceSizeNamesEnum fromValue(String value) {
    for (final item in AzureBareMetalInstanceSizeNamesEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureBareMetalInstanceSizeNamesEnum value: $value');
  }
}

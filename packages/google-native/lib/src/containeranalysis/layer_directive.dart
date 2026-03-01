/// The recovered Dockerfile directive used to construct this layer.
enum LayerDirective {
  directiveUnspecified("DIRECTIVE_UNSPECIFIED"),
  maintainer("MAINTAINER"),
  run("RUN"),
  cmd("CMD"),
  label("LABEL"),
  expose("EXPOSE"),
  env("ENV"),
  add("ADD"),
  copy("COPY"),
  entrypoint("ENTRYPOINT"),
  volume("VOLUME"),
  user("USER"),
  workdir("WORKDIR"),
  arg("ARG"),
  onbuild("ONBUILD"),
  stopsignal("STOPSIGNAL"),
  healthcheck("HEALTHCHECK"),
  shell("SHELL");

  const LayerDirective(this.value);
  final String value;

  static LayerDirective fromValue(String value) {
    for (final item in LayerDirective.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LayerDirective value: $value');
  }
}
